.class final Lcom/android/server/print/RemotePrintSpooler;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;,
        Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;,
        Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;
    }
.end annotation


# static fields
.field private static final BIND_SPOOLER_SERVICE_TIMEOUT:J

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintSpooler"


# instance fields
.field private final mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

.field private mCanUnbind:Z

.field private final mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

.field private final mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

.field private final mContext:Landroid/content/Context;

.field private final mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

.field private mDestroyed:Z

.field private final mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

.field private final mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

.field private final mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

.field private final mIntent:Landroid/content/Intent;

.field private mIsLowPriority:Z

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/print/IPrintSpooler;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

.field private final mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static synthetic -get0(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/print/RemotePrintSpooler;)Landroid/print/IPrintSpooler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->onAllPrintJobsHandled()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    .registers 2
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->setClientLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 68
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x1d4c0

    :goto_e
    int-to-long v0, v0

    .line 67
    sput-wide v0, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    .line 61
    return-void

    .line 68
    :cond_12
    const/16 v0, 0x2710

    goto :goto_e
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "lowPriority"    # Z
    .param p4, "callbacks"    # Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    .line 74
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    .line 76
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    .line 78
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 81
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    .line 84
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    .line 87
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    .line 89
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 117
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    .line 119
    iput-object p4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    .line 120
    iput-boolean p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    .line 121
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.printspooler"

    .line 124
    const-string/jumbo v3, "com.android.printspooler.model.PrintSpoolerService"

    .line 123
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method private bindLocked()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 605
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v8, :cond_5

    .line 606
    return-void

    .line 614
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    if-eqz v8, :cond_26

    .line 615
    const/4 v2, 0x1

    .line 620
    .local v2, "flags":I
    :goto_a
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v11, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10, v2, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 624
    .local v6, "startMillis":J
    :goto_19
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v8, :cond_2a

    .line 639
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 640
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 604
    return-void

    .line 617
    .end local v2    # "flags":I
    .end local v6    # "startMillis":J
    :cond_26
    const v2, 0x4000001

    .restart local v2    # "flags":I
    goto :goto_a

    .line 627
    .restart local v6    # "startMillis":J
    :cond_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 628
    .local v0, "elapsedMillis":J
    sget-wide v8, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    sub-long v4, v8, v0

    .line 629
    .local v4, "remainingMillis":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_43

    .line 630
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v9, "Cannot get spooler!"

    invoke-direct {v8, v9}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 633
    :cond_43
    :try_start_43
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v8, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_48} :catch_49

    goto :goto_19

    .line 634
    :catch_49
    move-exception v3

    .local v3, "ie":Ljava/lang/InterruptedException;
    goto :goto_19
.end method

.method private clearClientLocked()V
    .registers 4

    .prologue
    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 674
    :goto_6
    return-void

    .line 677
    :catch_7
    move-exception v0

    .line 678
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error clearing print spooler client"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private getRemoteInstanceLazy()Landroid/print/IPrintSpooler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_3
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v0, :cond_b

    .line 597
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    monitor-exit v1

    return-object v0

    .line 599
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->bindLocked()V

    .line 600
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 595
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onAllPrintJobsHandled()V
    .registers 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 585
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 586
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 583
    return-void

    .line 584
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 3
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 590
    return-void
.end method

.method private setClientLocked()V
    .registers 4

    .prologue
    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 666
    :goto_7
    return-void

    .line 669
    :catch_8
    move-exception v0

    .line 670
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting print spooler client"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    .prologue
    .line 690
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 691
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_19
    return-void
.end method

.method private throwIfDestroyedLocked()V
    .registers 3

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    if-eqz v0, :cond_d

    .line 685
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_d
    return-void
.end method

.method private unbindLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 644
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-nez v1, :cond_b

    .line 645
    return-void

    .line 658
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_1c

    .line 648
    :cond_b
    :goto_b
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    if-eqz v1, :cond_6

    .line 652
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    .line 653
    iput-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 654
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 655
    return-void

    .line 659
    :catch_1c
    move-exception v0

    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_b
.end method


# virtual methods
.method public clearCustomPrinterIconCache()V
    .registers 5

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 429
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 430
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 431
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_23

    monitor-exit v2

    .line 434
    :try_start_d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->clearCustomPrinterIconCache(Landroid/print/IPrintSpooler;)Ljava/lang/Void;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_29
    .catchall {:try_start_d .. :try_end_16} :catchall_42

    .line 443
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 444
    const/4 v1, 0x1

    :try_start_1a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 445
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_26

    :goto_21
    monitor-exit v2

    .line 427
    return-void

    .line 429
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    .line 443
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1

    .line 435
    :catch_29
    move-exception v0

    .line 436
    .local v0, "re":Ljava/lang/Exception;
    :try_start_2a
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error clearing custom printer icon cache."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_42

    .line 443
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 444
    const/4 v1, 0x1

    :try_start_37
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 445
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_21

    .line 443
    :catchall_3f
    move-exception v1

    monitor-exit v2

    throw v1

    .line 437
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_42
    move-exception v1

    .line 443
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 444
    const/4 v3, 0x1

    :try_start_47
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 445
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    monitor-exit v2

    .line 437
    throw v1

    .line 443
    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final createPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 7
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 179
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 180
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 181
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v3

    .line 184
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/print/IPrintSpooler;->createPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_40
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_59

    .line 193
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 194
    const/4 v2, 0x1

    :try_start_18
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 195
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v3

    .line 177
    return-void

    .line 179
    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    .line 193
    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2

    .line 187
    :catch_27
    move-exception v1

    .line 188
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_28
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error creating print job."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_59

    .line 193
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 194
    const/4 v2, 0x1

    :try_start_35
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 195
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    .line 193
    :catchall_3d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 185
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_40
    move-exception v0

    .line 186
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error creating print job."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_59

    .line 193
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 194
    const/4 v2, 0x1

    :try_start_4e
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 195
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_56

    goto :goto_1f

    .line 193
    :catchall_56
    move-exception v2

    monitor-exit v3

    throw v2

    .line 189
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_59
    move-exception v2

    .line 193
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 194
    const/4 v4, 0x1

    :try_start_5e
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 195
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_67

    monitor-exit v3

    .line 189
    throw v2

    .line 193
    :catchall_67
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final destroy()V
    .registers 3

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 556
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 558
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_14

    monitor-exit v1

    .line 551
    return-void

    .line 556
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 565
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 566
    :try_start_3
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v4, "destroyed="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 567
    iget-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 568
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v4, "bound="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 569
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v2, :cond_4a

    const-string/jumbo v2, "true"

    .line 568
    :goto_2d
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 571
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_4e

    .line 574
    :try_start_37
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-interface {v2, p1, v4}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_37 .. :try_end_48} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_48} :catch_53
    .catchall {:try_start_37 .. :try_end_48} :catchall_4e

    :goto_48
    monitor-exit v3

    .line 564
    return-void

    .line 569
    :cond_4a
    :try_start_4a
    const-string/jumbo v2, "false"
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_2d

    .line 565
    :catchall_4e
    move-exception v2

    monitor-exit v3

    throw v2

    .line 575
    :catch_51
    move-exception v1

    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    goto :goto_48

    .line 577
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_53
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_48
.end method

.method public final getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .registers 6
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 402
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 403
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 404
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    monitor-exit v2

    .line 407
    :try_start_d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->getCustomPrinterIcon(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_2a
    .catchall {:try_start_d .. :try_end_16} :catchall_45

    move-result-object v1

    .line 417
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    const/4 v3, 0x1

    :try_start_1b
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 419
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    monitor-exit v2

    .line 407
    return-object v1

    .line 402
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    .line 417
    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1

    .line 409
    :catch_2a
    move-exception v0

    .line 410
    .local v0, "re":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error getting custom printer icon."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_45

    .line 411
    const/4 v1, 0x0

    .line 417
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    const/4 v3, 0x1

    :try_start_39
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 419
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_42

    monitor-exit v2

    .line 411
    return-object v1

    .line 417
    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1

    .line 412
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_45
    move-exception v1

    .line 417
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    const/4 v3, 0x1

    :try_start_4a
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 419
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_53

    monitor-exit v2

    .line 412
    throw v1

    .line 417
    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 228
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 229
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    monitor-exit v3

    .line 233
    :try_start_d
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_45
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_2a
    .catchall {:try_start_d .. :try_end_16} :catchall_5e

    move-result-object v2

    .line 243
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 244
    const/4 v4, 0x1

    :try_start_1b
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 245
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    monitor-exit v3

    .line 233
    return-object v2

    .line 228
    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2

    .line 243
    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2

    .line 237
    :catch_2a
    move-exception v1

    .line 238
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_2b
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error getting print job info."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_5e

    .line 243
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 244
    const/4 v2, 0x1

    :try_start_38
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 245
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_42

    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_3f
    monitor-exit v3

    .line 248
    const/4 v2, 0x0

    return-object v2

    .line 243
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2

    .line 235
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_45
    move-exception v0

    .line 236
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_46
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error getting print job info."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_5e

    .line 243
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 244
    const/4 v2, 0x1

    :try_start_53
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 245
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_3f

    .line 243
    :catchall_5b
    move-exception v2

    monitor-exit v3

    throw v2

    .line 239
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_5e
    move-exception v2

    .line 243
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 244
    const/4 v4, 0x1

    :try_start_63
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 245
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6c

    monitor-exit v3

    .line 239
    throw v2

    .line 243
    :catchall_6c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "state"    # I
    .param p3, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 154
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 155
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 156
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    monitor-exit v3

    .line 159
    :try_start_d
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_45
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_2a
    .catchall {:try_start_d .. :try_end_16} :catchall_5e

    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    const/4 v4, 0x1

    :try_start_1b
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 171
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    monitor-exit v3

    .line 159
    return-object v2

    .line 154
    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2

    .line 169
    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2

    .line 163
    :catch_2a
    move-exception v1

    .line 164
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_2b
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error getting print jobs."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_5e

    .line 169
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    const/4 v2, 0x1

    :try_start_38
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 171
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_42

    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_3f
    monitor-exit v3

    .line 174
    const/4 v2, 0x0

    return-object v2

    .line 169
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2

    .line 161
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_45
    move-exception v0

    .line 162
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_46
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error getting print jobs."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_5e

    .line 169
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    const/4 v2, 0x1

    :try_start_53
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 171
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_3f

    .line 169
    :catchall_5b
    move-exception v2

    monitor-exit v3

    throw v2

    .line 165
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_5e
    move-exception v2

    .line 169
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    const/4 v4, 0x1

    :try_start_63
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 171
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6c

    monitor-exit v3

    .line 165
    throw v2

    .line 169
    :catchall_6c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public increasePriority()V
    .registers 5

    .prologue
    .line 128
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    if-eqz v1, :cond_29

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    .line 131
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 132
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 134
    :goto_d
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_22

    if-nez v1, :cond_25

    .line 136
    :try_start_11
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_22

    goto :goto_d

    .line 137
    :catch_17
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_18
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v3, "Interrupted while waiting for operation to complete"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    goto :goto_d

    .line 131
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1

    .line 146
    :cond_25
    :try_start_25
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    monitor-exit v2

    .line 127
    :cond_29
    return-void
.end method

.method public final onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .registers 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 370
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 371
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 372
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_23

    monitor-exit v2

    .line 375
    :try_start_d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->onCustomPrinterIconLoaded(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)Ljava/lang/Void;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_29
    .catchall {:try_start_d .. :try_end_16} :catchall_42

    .line 384
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 385
    const/4 v1, 0x1

    :try_start_1a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 386
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_26

    :goto_21
    monitor-exit v2

    .line 368
    return-void

    .line 370
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    .line 384
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1

    .line 377
    :catch_29
    move-exception v0

    .line 378
    .local v0, "re":Ljava/lang/Exception;
    :try_start_2a
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error loading new custom printer icon."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_42

    .line 384
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 385
    const/4 v1, 0x1

    :try_start_37
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 386
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_21

    .line 384
    :catchall_3f
    move-exception v1

    monitor-exit v2

    throw v1

    .line 379
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_42
    move-exception v1

    .line 384
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 385
    const/4 v3, 0x1

    :try_start_47
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 386
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    monitor-exit v2

    .line 379
    throw v1

    .line 384
    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final pruneApprovedPrintServices(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "servicesToKeep":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 507
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 508
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 509
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    .line 512
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/print/IPrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    .line 520
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 522
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    .line 505
    return-void

    .line 507
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    .line 520
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    .line 513
    :catch_27
    move-exception v0

    .line 514
    .local v0, "re":Ljava/lang/Exception;
    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error pruning approved print services."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    .line 520
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 522
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    .line 520
    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 515
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_40
    move-exception v1

    .line 520
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 522
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    .line 515
    throw v1

    .line 520
    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final removeObsoletePrintJobs()V
    .registers 6

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 529
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 530
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 531
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v3

    .line 534
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2}, Landroid/print/IPrintSpooler;->removeObsoletePrintJobs()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_40
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_59

    .line 544
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 545
    const/4 v2, 0x1

    :try_start_18
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 546
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v3

    .line 527
    return-void

    .line 529
    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    .line 544
    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2

    .line 537
    :catch_27
    move-exception v1

    .line 538
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_28
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error removing obsolete print jobs ."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_59

    .line 544
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 545
    const/4 v2, 0x1

    :try_start_35
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 546
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    .line 544
    :catchall_3d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 535
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_40
    move-exception v0

    .line 536
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error removing obsolete print jobs ."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_59

    .line 544
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 545
    const/4 v2, 0x1

    :try_start_4e
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 546
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_56

    goto :goto_1f

    .line 544
    :catchall_56
    move-exception v2

    monitor-exit v3

    throw v2

    .line 539
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_59
    move-exception v2

    .line 544
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 545
    const/4 v4, 0x1

    :try_start_5e
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 546
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_67

    monitor-exit v3

    .line 539
    throw v2

    .line 544
    :catchall_67
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .registers 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "cancelling"    # Z

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 477
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 478
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 479
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v3

    .line 482
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/print/IPrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_40
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_59

    .line 493
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 494
    const/4 v2, 0x1

    :try_start_18
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 495
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v3

    .line 475
    return-void

    .line 477
    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    .line 493
    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2

    .line 486
    :catch_27
    move-exception v1

    .line 487
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_28
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error setting print job cancelling."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_59

    .line 493
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 494
    const/4 v2, 0x1

    :try_start_35
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 495
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    .line 493
    :catchall_3d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 484
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_40
    move-exception v0

    .line 485
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error setting print job cancelling."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_59

    .line 493
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 494
    const/4 v2, 0x1

    :try_start_4e
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 495
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_56

    goto :goto_1f

    .line 493
    :catchall_56
    move-exception v2

    monitor-exit v3

    throw v2

    .line 488
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_59
    move-exception v2

    .line 493
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 494
    const/4 v4, 0x1

    :try_start_5e
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 495
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_67

    monitor-exit v3

    .line 488
    throw v2

    .line 493
    :catchall_67
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 9
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "state"    # I
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 253
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 254
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 255
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_25

    monitor-exit v3

    .line 258
    :try_start_e
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_45
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_2b
    .catchall {:try_start_e .. :try_end_17} :catchall_5e

    move-result v2

    .line 268
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 269
    const/4 v4, 0x1

    :try_start_1c
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 270
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_28

    monitor-exit v3

    .line 258
    return v2

    .line 253
    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2

    .line 268
    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2

    .line 262
    :catch_2b
    move-exception v1

    .line 263
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_2c
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error setting print job state."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_5e

    .line 268
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 269
    const/4 v2, 0x1

    :try_start_39
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 270
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_42

    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_40
    monitor-exit v3

    .line 273
    return v4

    .line 268
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2

    .line 260
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_45
    move-exception v0

    .line 261
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_46
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error setting print job state."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_5e

    .line 268
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 269
    const/4 v2, 0x1

    :try_start_53
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 270
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_40

    .line 268
    :catchall_5b
    move-exception v2

    monitor-exit v3

    throw v2

    .line 264
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_5e
    move-exception v2

    .line 268
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 269
    const/4 v4, 0x1

    :try_start_63
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 270
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6c

    monitor-exit v3

    .line 264
    throw v2

    .line 268
    :catchall_6c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 451
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 452
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 453
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 454
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_25

    monitor-exit v3

    .line 457
    :try_start_e
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_45
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_2b
    .catchall {:try_start_e .. :try_end_17} :catchall_5e

    move-result v2

    .line 467
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 468
    const/4 v4, 0x1

    :try_start_1c
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 469
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_28

    monitor-exit v3

    .line 457
    return v2

    .line 452
    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2

    .line 467
    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2

    .line 461
    :catch_2b
    move-exception v1

    .line 462
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_2c
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error setting print job tag."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_5e

    .line 467
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 468
    const/4 v2, 0x1

    :try_start_39
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 469
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_42

    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_40
    monitor-exit v3

    .line 472
    return v4

    .line 467
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2

    .line 459
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_45
    move-exception v0

    .line 460
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_46
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error setting print job tag."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_5e

    .line 467
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 468
    const/4 v2, 0x1

    :try_start_53
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 469
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_40

    .line 467
    :catchall_5b
    move-exception v2

    monitor-exit v3

    throw v2

    .line 463
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_5e
    move-exception v2

    .line 467
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 468
    const/4 v4, 0x1

    :try_start_63
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 469
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6c

    monitor-exit v3

    .line 463
    throw v2

    .line 467
    :catchall_6c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final setProgress(Landroid/print/PrintJobId;F)V
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "progress"    # F

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 285
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 286
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    .line 290
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    .line 297
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 298
    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 299
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    .line 283
    return-void

    .line 285
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    .line 297
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    .line 291
    :catch_27
    move-exception v0

    .line 292
    .local v0, "re":Ljava/lang/Exception;
    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting progress."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    .line 297
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 298
    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 299
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    .line 297
    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 293
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_40
    move-exception v1

    .line 297
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 298
    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 299
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    .line 293
    throw v1

    .line 297
    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .registers 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # I
    .param p3, "appPackageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 341
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 342
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 343
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    .line 346
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/print/IPrintSpooler;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    .line 353
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 355
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    .line 339
    return-void

    .line 341
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    .line 353
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    .line 347
    :catch_27
    move-exception v0

    .line 348
    .local v0, "re":Ljava/lang/Exception;
    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting status."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    .line 353
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 355
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    .line 353
    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 349
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_40
    move-exception v1

    .line 353
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 355
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    .line 349
    throw v1

    .line 353
    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 312
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 314
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    .line 317
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    .line 324
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 326
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    .line 310
    return-void

    .line 312
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    .line 324
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    .line 318
    :catch_27
    move-exception v0

    .line 319
    .local v0, "re":Ljava/lang/Exception;
    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting status."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    .line 324
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 326
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    .line 324
    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 320
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_40
    move-exception v1

    .line 324
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 326
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    .line 320
    throw v1

    .line 324
    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 202
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 203
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 204
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    monitor-exit v3

    .line 207
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/print/IPrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_46
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_2a
    .catchall {:try_start_d .. :try_end_14} :catchall_62

    .line 218
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 219
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 220
    const/4 v2, 0x1

    :try_start_1b
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 221
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    :goto_22
    monitor-exit v3

    .line 200
    return-void

    .line 202
    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2

    .line 219
    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2

    .line 210
    :catch_2a
    move-exception v1

    .line 211
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_2b
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error writing print job data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_62

    .line 218
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 219
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 220
    const/4 v2, 0x1

    :try_start_3b
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 221
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_43

    goto :goto_22

    .line 219
    :catchall_43
    move-exception v2

    monitor-exit v3

    throw v2

    .line 208
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_46
    move-exception v0

    .line 209
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_47
    const-string/jumbo v2, "RemotePrintSpooler"

    const-string/jumbo v3, "Error writing print job data."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_62

    .line 218
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 219
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 220
    const/4 v2, 0x1

    :try_start_57
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 221
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5f

    goto :goto_22

    .line 219
    :catchall_5f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 212
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_62
    move-exception v2

    .line 218
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 219
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 220
    const/4 v4, 0x1

    :try_start_6a
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 221
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_73

    monitor-exit v3

    .line 212
    throw v2

    .line 219
    :catchall_73
    move-exception v2

    monitor-exit v3

    throw v2
.end method

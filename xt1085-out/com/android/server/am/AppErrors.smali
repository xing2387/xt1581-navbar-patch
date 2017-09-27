.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 82
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 87
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 97
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 101
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 102
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 546
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-nez v3, :cond_8

    .line 547
    return-object v4

    .line 550
    :cond_8
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v3, :cond_10

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v3, :cond_41

    .line 554
    :cond_10
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 555
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 556
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 557
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 558
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 559
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_32

    move v1, v2

    :cond_32
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 561
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_3c

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_46

    .line 562
    :cond_3c
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 563
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 573
    :cond_40
    :goto_40
    return-object v0

    .line 550
    .end local v0    # "report":Landroid/app/ApplicationErrorReport;
    :cond_41
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-nez v3, :cond_10

    .line 551
    return-object v4

    .line 564
    .restart local v0    # "report":Landroid/app/ApplicationErrorReport;
    :cond_46
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_40

    .line 565
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 566
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 568
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 569
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 570
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_40
.end method

.method private generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 517
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 519
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 520
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 521
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 522
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 523
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 524
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 525
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 526
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 528
    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .registers 22
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-nez v1, :cond_8

    .line 440
    const/4 v1, 0x0

    return v1

    .line 444
    :cond_8
    if-eqz p1, :cond_72

    :try_start_a
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 445
    :goto_c
    if-eqz p1, :cond_74

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 446
    .local v3, "pid":I
    :goto_10
    if-eqz p1, :cond_77

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 447
    .local v10, "uid":I
    :goto_16
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 448
    iget-object v8, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    .line 447
    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c0

    .line 449
    const-string/jumbo v1, "1"

    const-string/jumbo v4, "ro.debuggable"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 450
    const-string/jumbo v1, "Native crash"

    iget-object v4, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 449
    if-eqz v1, :cond_7a

    .line 451
    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip killing native crashed app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 452
    const-string/jumbo v5, "("

    .line 451
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 452
    const-string/jumbo v5, ") during testing"

    .line 451
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_70
    :goto_70
    const/4 v1, 0x1

    return v1

    .line 444
    .end local v3    # "pid":I
    .end local v10    # "uid":I
    :cond_72
    const/4 v2, 0x0

    .local v2, "name":Ljava/lang/String;
    goto :goto_c

    .line 445
    .end local v2    # "name":Ljava/lang/String;
    :cond_74
    move/from16 v3, p8

    .restart local v3    # "pid":I
    goto :goto_10

    .line 446
    :cond_77
    move/from16 v10, p9

    .restart local v10    # "uid":I
    goto :goto_16

    .line 454
    :cond_7a
    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Force-killing crashed app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 455
    const-string/jumbo v5, " at watcher\'s request"

    .line 454
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-eqz p1, :cond_c2

    .line 457
    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 459
    const-string/jumbo v1, "crash"

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_b1} :catch_b2

    goto :goto_70

    .line 469
    .end local v3    # "pid":I
    .end local v10    # "uid":I
    :catch_b2
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 471
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 473
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_c0
    const/4 v1, 0x0

    return v1

    .line 463
    .restart local v3    # "pid":I
    .restart local v10    # "uid":I
    :cond_c2
    :try_start_c2
    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 464
    invoke-static {v10, v3}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_c8} :catch_b2

    goto :goto_70
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .prologue
    const/4 v2, 0x1

    .line 478
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 480
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 479
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 481
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 482
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    .line 483
    const-string/jumbo v2, "force-crash"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    return v0
.end method

.method private makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;

    .prologue
    .line 938
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 940
    const/4 v2, 0x2

    .line 941
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 939
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 942
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 943
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    .line 937
    return-void
.end method


# virtual methods
.method final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .registers 42
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "aboveSystem"    # Z
    .param p5, "annotation"    # Ljava/lang/String;

    .prologue
    .line 738
    new-instance v18, Ljava/util/ArrayList;

    const/4 v4, 0x5

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 739
    .local v18, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v22, Landroid/util/SparseArray;

    const/16 v4, 0x14

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 741
    .local v22, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v4, :cond_40

    .line 744
    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 745
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 744
    move-object/from16 v0, p5

    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v32

    .line 746
    .local v32, "res":I
    if-gez v32, :cond_40

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_40

    .line 747
    const-string/jumbo v4, "anr"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_40} :catch_9c

    .line 755
    .end local v32    # "res":I
    :cond_40
    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 757
    .local v14, "anrTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 762
    const-string/jumbo v5, "anr_show_background"

    const/4 v6, 0x0

    .line 761
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_ad

    const/16 v33, 0x1

    .line 766
    .local v33, "showBackground":Z
    :goto_5f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_64
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_b0

    .line 769
    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "During shutdown skipping ANR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_64 .. :try_end_97} :catchall_219

    monitor-exit v5

    .line 766
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 770
    return-void

    .line 749
    .end local v14    # "anrTime":J
    .end local v33    # "showBackground":Z
    :catch_9c
    move-exception v16

    .line 750
    .local v16, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 751
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_40

    .line 761
    .end local v16    # "e":Landroid/os/RemoteException;
    .restart local v14    # "anrTime":J
    :cond_ad
    const/16 v33, 0x0

    .restart local v33    # "showBackground":Z
    goto :goto_5f

    .line 771
    :cond_b0
    :try_start_b0
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v4, :cond_e3

    .line 772
    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping duplicate ANR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_b0 .. :try_end_de} :catchall_219

    monitor-exit v5

    .line 766
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 773
    return-void

    .line 774
    :cond_e3
    :try_start_e3
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v4, :cond_116

    .line 775
    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Crashing app skipping ANR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_e3 .. :try_end_111} :catchall_219

    monitor-exit v5

    .line 766
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 776
    return-void

    .line 781
    :cond_116
    const/4 v4, 0x1

    :try_start_117
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 784
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 785
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v4, v7

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v4, v7

    const/4 v6, 0x4

    aput-object p5, v4, v6

    .line 784
    const/16 v6, 0x7538

    invoke-static {v6, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 788
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    if-nez v33, :cond_165

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v4

    if-eqz v4, :cond_203

    :cond_165
    const/16 v21, 0x0

    .line 792
    .local v21, "isSilentANR":Z
    :goto_167
    if-nez v21, :cond_21f

    .line 793
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    .line 794
    .local v28, "parentPid":I
    if-eqz p3, :cond_187

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_187

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v4, :cond_187

    .line 795
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    .line 797
    :cond_187
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v28

    if-eq v0, v4, :cond_198

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_198
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v4, v6, :cond_1b1

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v28

    if-eq v4, v0, :cond_1b1

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v19, v4, -0x1

    .local v19, "i":I
    :goto_1bd
    if-ltz v19, :cond_21f

    .line 802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    .line 803
    .local v31, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v31, :cond_200

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_200

    .line 804
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v29, v0

    .line 805
    .local v29, "pid":I
    if-lez v29, :cond_200

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v29

    if-eq v0, v4, :cond_200

    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_200

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v29

    if-eq v0, v4, :cond_200

    .line 806
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v4, :cond_20f

    .line 807
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .end local v29    # "pid":I
    :cond_200
    :goto_200
    add-int/lit8 v19, v19, -0x1

    goto :goto_1bd

    .line 791
    .end local v19    # "i":I
    .end local v21    # "isSilentANR":Z
    .end local v28    # "parentPid":I
    .end local v31    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_203
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v6, :cond_165

    const/16 v21, 0x1

    .restart local v21    # "isSilentANR":Z
    goto/16 :goto_167

    .line 810
    .restart local v19    # "i":I
    .restart local v28    # "parentPid":I
    .restart local v29    # "pid":I
    .restart local v31    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_20f
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_218
    .catchall {:try_start_117 .. :try_end_218} :catchall_219

    goto :goto_200

    .line 766
    .end local v19    # "i":I
    .end local v21    # "isSilentANR":Z
    .end local v28    # "parentPid":I
    .end local v29    # "pid":I
    .end local v31    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_219
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v21    # "isSilentANR":Z
    :cond_21f
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 820
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    .local v20, "info":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 822
    const-string/jumbo v4, "ANR in "

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    if-eqz p2, :cond_25d

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v4, :cond_25d

    .line 824
    const-string/jumbo v4, " ("

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :cond_25d
    const-string/jumbo v4, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string/jumbo v4, "PID: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    if-eqz p5, :cond_293

    .line 829
    const-string/jumbo v4, "Reason: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_293
    if-eqz p3, :cond_2b2

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_2b2

    .line 832
    const-string/jumbo v4, "Parent: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    :cond_2b2
    new-instance v30, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 837
    .local v30, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    sget-object v26, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 839
    .local v26, "nativeProcs":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 840
    .local v12, "tracesFile":Ljava/io/File;
    if-eqz v21, :cond_35f

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 842
    const/4 v6, 0x0

    .line 841
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 848
    .local v12, "tracesFile":Ljava/io/File;
    :goto_2ce
    const/4 v11, 0x0

    .line 850
    .local v11, "cpuInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v5

    .line 852
    :try_start_2dd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4, v14, v15}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;
    :try_end_2e6
    .catchall {:try_start_2dd .. :try_end_2e6} :catchall_372

    move-result-object v11

    .local v11, "cpuInfo":Ljava/lang/String;
    monitor-exit v5

    .line 854
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    if-nez v12, :cond_314

    .line 863
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/os/Process;->sendSignal(II)V

    .line 866
    :cond_314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "anr"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 867
    const/4 v13, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    .line 866
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v4, :cond_39d

    .line 872
    :try_start_333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 873
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 872
    invoke-interface {v4, v5, v6, v7}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v32

    .line 874
    .restart local v32    # "res":I
    if-eqz v32, :cond_39d

    .line 875
    if-gez v32, :cond_375

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_375

    .line 876
    const-string/jumbo v4, "anr"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_35e
    .catch Landroid/os/RemoteException; {:try_start_333 .. :try_end_35e} :catch_38d

    .line 882
    :goto_35e
    return-void

    .line 844
    .end local v11    # "cpuInfo":Ljava/lang/String;
    .end local v32    # "res":I
    .local v12, "tracesFile":Ljava/io/File;
    :cond_35f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    move-object/from16 v3, v26

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .local v12, "tracesFile":Ljava/io/File;
    goto/16 :goto_2ce

    .line 851
    .local v11, "cpuInfo":Ljava/lang/String;
    :catchall_372
    move-exception v4

    monitor-exit v5

    throw v4

    .line 878
    .local v11, "cpuInfo":Ljava/lang/String;
    .restart local v32    # "res":I
    :cond_375
    :try_start_375
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5
    :try_end_37a
    .catch Landroid/os/RemoteException; {:try_start_375 .. :try_end_37a} :catch_38d

    :try_start_37a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    :try_end_388
    .catchall {:try_start_37a .. :try_end_388} :catchall_3c6

    :try_start_388
    monitor-exit v5

    .line 878
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_38c
    .catch Landroid/os/RemoteException; {:try_start_388 .. :try_end_38c} :catch_38d

    goto :goto_35e

    .line 884
    .end local v32    # "res":I
    :catch_38d
    move-exception v16

    .line 885
    .restart local v16    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 886
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 890
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_39d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_3a2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    .line 893
    if-eqz v21, :cond_3cc

    .line 894
    const-string/jumbo v4, "bg anr"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_3c1
    .catchall {:try_start_3a2 .. :try_end_3c1} :catchall_4e8

    monitor-exit v6

    .line 890
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 895
    return-void

    .line 878
    .restart local v32    # "res":I
    :catchall_3c6
    move-exception v4

    :try_start_3c7
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_3cc
    .catch Landroid/os/RemoteException; {:try_start_3c7 .. :try_end_3cc} :catch_38d

    .line 900
    .end local v32    # "res":I
    :cond_3cc
    if-eqz p2, :cond_4be

    :try_start_3ce
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object v5, v4

    .line 901
    :goto_3d3
    if-eqz p5, :cond_4c2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ANR "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 902
    :goto_3eb
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 899
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4, v7}, Lcom/android/server/am/AppErrors;->makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string/jumbo v4, "persist.sys.enableTraceRename"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 906
    .local v17, "enableTraceRename":Z
    if-eqz v17, :cond_47d

    .line 907
    const-string/jumbo v4, "dalvik.vm.stack-trace-file"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 908
    .local v35, "tracesPath":Ljava/lang/String;
    if-eqz v35, :cond_47d

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_47d

    .line 909
    new-instance v34, Ljava/io/File;

    invoke-direct/range {v34 .. v35}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 911
    .local v34, "traceRenameFile":Ljava/io/File;
    const-string/jumbo v4, "."

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    .line 912
    .local v23, "lpos":I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_4c7

    .line 913
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 917
    .local v27, "newTracesPath":Ljava/lang/String;
    :goto_46c
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 918
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 922
    .end local v23    # "lpos":I
    .end local v27    # "newTracesPath":Ljava/lang/String;
    .end local v34    # "traceRenameFile":Ljava/io/File;
    .end local v35    # "tracesPath":Ljava/lang/String;
    :cond_47d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v25

    .line 923
    .local v25, "msg":Landroid/os/Message;
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 924
    .local v24, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Landroid/os/Message;->what:I

    .line 925
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 926
    if-eqz p4, :cond_4e6

    const/4 v4, 0x1

    :goto_494
    move-object/from16 v0, v25

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 927
    const-string/jumbo v4, "app"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    if-eqz p2, :cond_4ae

    .line 929
    const-string/jumbo v4, "activity"

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :cond_4ae
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4b9
    .catchall {:try_start_3ce .. :try_end_4b9} :catchall_4e8

    monitor-exit v6

    .line 890
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 737
    return-void

    .line 900
    .end local v17    # "enableTraceRename":Z
    .end local v24    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v25    # "msg":Landroid/os/Message;
    :cond_4be
    const/4 v4, 0x0

    move-object v5, v4

    goto/16 :goto_3d3

    .line 901
    :cond_4c2
    :try_start_4c2
    const-string/jumbo v4, "ANR"

    goto/16 :goto_3eb

    .line 915
    .restart local v17    # "enableTraceRename":Z
    .restart local v23    # "lpos":I
    .restart local v34    # "traceRenameFile":Ljava/io/File;
    .restart local v35    # "tracesPath":Ljava/lang/String;
    :cond_4c7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4e4
    .catchall {:try_start_4c2 .. :try_end_4e4} :catchall_4e8

    move-result-object v27

    .restart local v27    # "newTracesPath":Ljava/lang/String;
    goto :goto_46c

    .line 926
    .end local v23    # "lpos":I
    .end local v27    # "newTracesPath":Ljava/lang/String;
    .end local v34    # "traceRenameFile":Ljava/io/File;
    .end local v35    # "tracesPath":Ljava/lang/String;
    .restart local v24    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v25    # "msg":Landroid/os/Message;
    :cond_4e6
    const/4 v4, 0x0

    goto :goto_494

    .line 890
    .end local v17    # "enableTraceRename":Z
    .end local v24    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v25    # "msg":Landroid/os/Message;
    :catchall_4e8
    move-exception v4

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 304
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 305
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 307
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 309
    .local v2, "origId":J
    :try_start_c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 311
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    return-void

    .line 310
    :catchall_13
    move-exception v4

    .line 311
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .registers 46
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .prologue
    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 318
    .local v10, "timeMillis":J
    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 319
    .local v7, "shortMsg":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 320
    .local v8, "longMsg":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 321
    .local v9, "stackTrace":Ljava/lang/String;
    if-eqz v7, :cond_50

    if-eqz v8, :cond_50

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 327
    :cond_2c
    :goto_2c
    new-instance v39, Lcom/android/server/am/AppErrorResult;

    invoke-direct/range {v39 .. v39}, Lcom/android/server/am/AppErrorResult;-><init>()V

    .line 329
    .local v39, "result":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 334
    invoke-direct/range {v4 .. v13}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_177

    move-result v4

    if-eqz v4, :cond_54

    monitor-exit v18

    .line 329
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 336
    return-void

    .line 323
    .end local v39    # "result":Lcom/android/server/am/AppErrorResult;
    :cond_50
    if-eqz v7, :cond_2c

    .line 324
    move-object v8, v7

    goto :goto_2c

    .line 343
    .restart local v39    # "result":Lcom/android/server/am/AppErrorResult;
    :cond_54
    if-eqz p1, :cond_61

    :try_start_56
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_177

    if-eqz v4, :cond_61

    monitor-exit v18

    .line 329
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 344
    return-void

    .line 348
    :cond_61
    if-eqz p1, :cond_74

    .line 349
    :try_start_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V

    .line 352
    :cond_74
    new-instance v17, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    .line 353
    .local v17, "data":Lcom/android/server/am/AppErrorDialog$Data;
    move-object/from16 v0, v39

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 354
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 358
    if-eqz p1, :cond_172

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-direct/range {v12 .. v17}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v4

    if-eqz v4, :cond_172

    .line 362
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v35

    .line 363
    .local v35, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput v4, v0, Landroid/os/Message;->what:I

    .line 365
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v0

    .line 366
    .local v40, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v17

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b5
    .catchall {:try_start_63 .. :try_end_b5} :catchall_177

    monitor-exit v18

    .line 329
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 370
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v38

    .line 372
    .local v38, "res":I
    const/16 v31, 0x0

    .line 373
    .local v31, "appErrorIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v5, 0x13c

    move/from16 v0, v38

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 374
    const/4 v4, 0x6

    move/from16 v0, v38

    if-eq v0, v4, :cond_d4

    const/4 v4, 0x7

    move/from16 v0, v38

    if-ne v0, v4, :cond_d6

    .line 375
    :cond_d4
    const/16 v38, 0x1

    .line 377
    :cond_d6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_db
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 378
    const/4 v4, 0x5

    move/from16 v0, v38

    if-ne v0, v4, :cond_e6

    .line 379
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 381
    :cond_e6
    const/4 v4, 0x3

    move/from16 v0, v38

    if-ne v0, v4, :cond_10e

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "crash"

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v12, v13, v6}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_f9
    .catchall {:try_start_db .. :try_end_f9} :catchall_1cc

    .line 383
    if-eqz v40, :cond_10e

    .line 385
    :try_start_fb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 386
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 385
    invoke-virtual {v4, v6, v12}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_10e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb .. :try_end_10e} :catch_17d
    .catchall {:try_start_fb .. :try_end_10e} :catchall_1cc

    .line 401
    :cond_10e
    :goto_10e
    const/4 v4, 0x1

    move/from16 v0, v38

    if-ne v0, v4, :cond_142

    .line 402
    :try_start_113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_1cc

    move-result-wide v36

    .line 405
    .local v36, "orig":J
    :try_start_117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 406
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v4, :cond_13f

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "crash"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v12, v13, v6}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_13f
    .catchall {:try_start_117 .. :try_end_13f} :catchall_1d2

    .line 411
    :cond_13f
    :try_start_13f
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 414
    .end local v36    # "orig":J
    :cond_142
    const/4 v4, 0x2

    move/from16 v0, v38

    if-ne v0, v4, :cond_151

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v31

    .line 417
    .end local v31    # "appErrorIntent":Landroid/content/Intent;
    :cond_151
    if-eqz p1, :cond_159

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_157
    .catchall {:try_start_13f .. :try_end_157} :catchall_1cc

    if-eqz v4, :cond_1d7

    :cond_159
    :goto_159
    monitor-exit v5

    .line 377
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 425
    if-eqz v31, :cond_171

    .line 427
    :try_start_15f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_171
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15f .. :try_end_171} :catch_1f7

    .line 316
    :cond_171
    :goto_171
    return-void

    .end local v35    # "msg":Landroid/os/Message;
    .end local v38    # "res":I
    .end local v40    # "task":Lcom/android/server/am/TaskRecord;
    :cond_172
    monitor-exit v18

    .line 329
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 359
    return-void

    .line 329
    .end local v17    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_177
    move-exception v4

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 387
    .restart local v17    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v31    # "appErrorIntent":Landroid/content/Intent;
    .restart local v35    # "msg":Landroid/os/Message;
    .restart local v38    # "res":I
    .restart local v40    # "task":Lcom/android/server/am/TaskRecord;
    :catch_17d
    move-exception v34

    .line 390
    .local v34, "e":Ljava/lang/IllegalArgumentException;
    :try_start_17e
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v32

    .line 391
    .local v32, "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v32, :cond_10e

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    move/from16 v19, v0

    .line 393
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    .line 395
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v27

    .line 396
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v28, v0

    .line 394
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 396
    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 392
    invoke-virtual/range {v18 .. v30}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_1ca
    .catchall {:try_start_17e .. :try_end_1ca} :catchall_1cc

    goto/16 :goto_10e

    .line 377
    .end local v31    # "appErrorIntent":Landroid/content/Intent;
    .end local v32    # "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v34    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_1cc
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 410
    .restart local v31    # "appErrorIntent":Landroid/content/Intent;
    .restart local v36    # "orig":J
    :catchall_1d2
    move-exception v4

    .line 411
    :try_start_1d3
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    throw v4

    .line 417
    .end local v31    # "appErrorIntent":Landroid/content/Intent;
    .end local v36    # "orig":J
    :cond_1d7
    const/4 v4, 0x3

    move/from16 v0, v38

    if-eq v0, v4, :cond_159

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 420
    invoke-virtual {v4, v6, v12, v13}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1f5
    .catchall {:try_start_1d3 .. :try_end_1f5} :catchall_1cc

    goto/16 :goto_159

    .line 428
    :catch_1f7
    move-exception v33

    .line 429
    .local v33, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "bug report receiver dissappeared"

    move-object/from16 v0, v33

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_171
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    const/4 v2, 0x0

    .line 533
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 534
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_8

    .line 535
    return-object v2

    .line 537
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 539
    const-string/jumbo v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 540
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 541
    return-object v1
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 29
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_d0

    .line 108
    const/4 v14, 0x0

    .line 109
    .local v14, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 110
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    .line 111
    .local v11, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 112
    .local v15, "processCount":I
    const/4 v6, 0x0

    .end local p3    # "needSep":Z
    .local v6, "ip":I
    :goto_24
    if-ge v6, v15, :cond_d0

    .line 113
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 114
    .local v12, "pname":Ljava/lang/String;
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/SparseArray;

    .line 115
    .local v20, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 116
    .local v18, "uidCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    move/from16 v0, v18

    if-ge v4, v0, :cond_cc

    .line 117
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 118
    .local v16, "puid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .line 119
    .local v17, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p4, :cond_6b

    if-eqz v17, :cond_c8

    .line 120
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c8

    .line 123
    :cond_6b
    if-nez v14, :cond_7f

    .line 124
    if-eqz p3, :cond_72

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 125
    :cond_72
    const/16 p3, 0x1

    .line 126
    .local p3, "needSep":Z
    const-string/jumbo v21, "  Time since processes crashed:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const/4 v14, 0x1

    .line 129
    .end local p3    # "needSep":Z
    :cond_7f
    const-string/jumbo v21, "    Process "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v21, " uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 131
    const-string/jumbo v21, ": last crashed "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v22, v8, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 133
    const-string/jumbo v21, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    :cond_c8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_37

    .line 112
    .end local v16    # "puid":I
    .end local v17    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_cc
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_24

    .line 138
    .end local v4    # "i":I
    .end local v6    # "ip":I
    .end local v8    # "now":J
    .end local v11    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v12    # "pname":Ljava/lang/String;
    .end local v14    # "printed":Z
    .end local v15    # "processCount":I
    .end local v18    # "uidCount":I
    .end local v20    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_247

    .line 139
    const/4 v14, 0x0

    .line 140
    .restart local v14    # "printed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    .line 141
    .local v10, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 142
    .restart local v15    # "processCount":I
    const/4 v6, 0x0

    .restart local v6    # "ip":I
    :goto_f0
    if-ge v6, v15, :cond_247

    .line 143
    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 144
    .restart local v12    # "pname":Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/SparseArray;

    .line 145
    .local v19, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 146
    .restart local v18    # "uidCount":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_103
    move/from16 v0, v18

    if-ge v4, v0, :cond_243

    .line 147
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 148
    .restart local v16    # "puid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .line 149
    .restart local v17    # "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p4, :cond_137

    if-eqz v17, :cond_23f

    .line 150
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_23f

    .line 153
    :cond_137
    if-nez v14, :cond_14b

    .line 154
    if-eqz p3, :cond_13e

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 155
    :cond_13e
    const/16 p3, 0x1

    .line 156
    .restart local p3    # "needSep":Z
    const-string/jumbo v21, "  Bad processes:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    const/4 v14, 0x1

    .line 159
    .end local p3    # "needSep":Z
    :cond_14b
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 160
    .local v5, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    const-string/jumbo v21, "    Bad process "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v21, " uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 162
    const-string/jumbo v21, ": crashed at time "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 163
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a3

    .line 164
    const-string/jumbo v21, "      Short msg: "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    :cond_1a3
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1be

    .line 167
    const-string/jumbo v21, "      Long msg: "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    :cond_1be
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_23f

    .line 170
    const-string/jumbo v21, "      Stack:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const/4 v7, 0x0

    .line 172
    .local v7, "lastPos":I
    const/4 v13, 0x0

    .local v13, "pos":I
    :goto_1d0
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_20f

    .line 173
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_20c

    .line 174
    const-string/jumbo v21, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    sub-int v22, v13, v7

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 177
    add-int/lit8 v7, v13, 0x1

    .line 172
    :cond_20c
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d0

    .line 180
    :cond_20f
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_23f

    .line 181
    const-string/jumbo v21, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v22, v22, v7

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 146
    .end local v5    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v7    # "lastPos":I
    .end local v13    # "pos":I
    :cond_23f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_103

    .line 142
    .end local v16    # "puid":I
    .end local v17    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_243
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f0

    .line 189
    .end local v4    # "i":I
    .end local v6    # "ip":I
    .end local v10    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v12    # "pname":Ljava/lang/String;
    .end local v14    # "printed":Z
    .end local v15    # "processCount":I
    .end local v18    # "uidCount":I
    .end local v19    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_247
    return p3
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 31
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .prologue
    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 579
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 580
    const-string/jumbo v8, "anr_show_background"

    const/4 v9, 0x0

    .line 579
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_13e

    const/16 v19, 0x1

    .line 584
    .local v19, "showBackground":Z
    :goto_18
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_142

    .line 585
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 586
    .local v14, "crashTime":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 590
    .end local v14    # "crashTime":Ljava/lang/Long;
    :goto_46
    if-eqz v14, :cond_193

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v22, 0xea60

    add-long v8, v8, v22

    cmp-long v5, v6, v8

    if-gez v5, :cond_193

    .line 592
    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 593
    const-string/jumbo v9, " has crashed too many times: killing!"

    .line 592
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 595
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v5, v9

    .line 594
    const/16 v8, 0x7550

    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 596
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 597
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_146

    .line 602
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    .line 603
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v5, v9

    .line 602
    const/16 v8, 0x753f

    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 604
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_119

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v23, v0

    .line 608
    new-instance v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 609
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 611
    :cond_119
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 612
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 616
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, "crash"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v9, v10, v8}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 617
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 618
    if-nez v19, :cond_146

    .line 619
    const/4 v5, 0x0

    return v5

    .line 579
    .end local v19    # "showBackground":Z
    :cond_13e
    const/16 v19, 0x0

    .restart local v19    # "showBackground":Z
    goto/16 :goto_18

    .line 588
    :cond_142
    const/4 v15, 0x0

    .local v15, "crashTimePersistent":Ljava/lang/Long;
    const/4 v14, 0x0

    .local v14, "crashTime":Ljava/lang/Long;
    goto/16 :goto_46

    .line 622
    .end local v14    # "crashTime":Ljava/lang/Long;
    .end local v15    # "crashTimePersistent":Ljava/lang/Long;
    :cond_146
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 636
    :cond_14f
    :goto_14f
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_1be

    const/16 v17, 0x1

    .line 638
    .local v17, "procIsBoundForeground":Z
    :goto_158
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/lit8 v16, v5, -0x1

    .local v16, "i":I
    :goto_162
    if-ltz v16, :cond_1c1

    .line 641
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ServiceRecord;

    .line 642
    .local v20, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 646
    if-eqz p6, :cond_190

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    const/4 v8, 0x1

    if-gt v5, v8, :cond_190

    .line 647
    move-object/from16 v0, v20

    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v5, :cond_18b

    .line 646
    if-eqz v17, :cond_190

    .line 648
    :cond_18b
    const/4 v5, 0x1

    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 638
    :cond_190
    add-int/lit8 v16, v16, -0x1

    goto :goto_162

    .line 625
    .end local v16    # "i":I
    .end local v17    # "procIsBoundForeground":Z
    .end local v20    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v12

    .line 626
    .local v12, "affectedTask":Lcom/android/server/am/TaskRecord;
    if-eqz p6, :cond_1a7

    .line 627
    move-object/from16 v0, p6

    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    .line 629
    :cond_1a7
    if-eqz p6, :cond_14f

    if-eqz v15, :cond_14f

    .line 630
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v22, 0xea60

    add-long v8, v8, v22

    cmp-long v5, v6, v8

    if-gez v5, :cond_14f

    .line 631
    const/4 v5, 0x1

    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    goto :goto_14f

    .line 636
    .end local v12    # "affectedTask":Lcom/android/server/am/TaskRecord;
    :cond_1be
    const/16 v17, 0x0

    .restart local v17    # "procIsBoundForeground":Z
    goto :goto_158

    .line 656
    .restart local v16    # "i":I
    :cond_1c1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 657
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_222

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_222

    .line 658
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_222

    .line 659
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v11, v5, -0x1

    .local v11, "activityNdx":I
    :goto_1e9
    if-ltz v11, :cond_222

    .line 660
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 661
    .local v18, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_21f

    .line 662
    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Clearing package preferred activities from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :try_start_214
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 665
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 664
    invoke-interface {v5, v8}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_21f
    .catch Landroid/os/RemoteException; {:try_start_214 .. :try_end_21f} :catch_267

    .line 659
    :cond_21f
    :goto_21f
    add-int/lit8 v11, v11, -0x1

    goto :goto_1e9

    .line 673
    .end local v11    # "activityNdx":I
    .end local v18    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_222
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_252

    .line 676
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 677
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 680
    :cond_252
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v5, :cond_265

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 681
    :cond_265
    const/4 v5, 0x1

    return v5

    .line 666
    .restart local v11    # "activityNdx":I
    .restart local v18    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_267
    move-exception v13

    .local v13, "c":Landroid/os/RemoteException;
    goto :goto_21f
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .registers 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 947
    const/16 v18, 0x0

    .line 948
    .local v18, "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 949
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/HashMap;

    .line 950
    .local v19, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    .line 951
    .local v20, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v20, :cond_51

    move-object/from16 v0, v20

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_51

    .line 952
    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "App already has anr dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v2, 0x13d

    .line 954
    const/4 v3, -0x2

    .line 953
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_ea

    monitor-exit v22

    .line 948
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 955
    return-void

    .line 958
    :cond_51
    :try_start_51
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ANR"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 959
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v1, :cond_66

    .line 960
    const/high16 v1, 0x50000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 963
    :cond_66
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 965
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 963
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 964
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 965
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    const/16 v17, 0x0

    .line 963
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 967
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 968
    const-string/jumbo v2, "anr_show_background"

    const/4 v3, 0x0

    .line 967
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_ce

    const/16 v21, 0x1

    .line 969
    .local v21, "showBackground":Z
    :goto_93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v1

    if-nez v1, :cond_9f

    if-eqz v21, :cond_d3

    .line 970
    :cond_9f
    new-instance v5, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 971
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 972
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_d1

    const/4 v10, 0x1

    :goto_bb
    move-object/from16 v8, v20

    .line 970
    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_c0
    .catchall {:try_start_51 .. :try_end_c0} :catchall_ea

    .line 973
    .local v5, "d":Landroid/app/Dialog;
    :try_start_c0
    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_f2

    .end local v18    # "d":Landroid/app/Dialog;
    :goto_c4
    monitor-exit v22

    .line 948
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 982
    if-eqz v5, :cond_cd

    .line 983
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 946
    :cond_cd
    return-void

    .line 967
    .end local v5    # "d":Landroid/app/Dialog;
    .end local v21    # "showBackground":Z
    .restart local v18    # "d":Landroid/app/Dialog;
    :cond_ce
    const/16 v21, 0x0

    .restart local v21    # "showBackground":Z
    goto :goto_93

    .line 972
    :cond_d1
    const/4 v10, 0x0

    goto :goto_bb

    .line 975
    :cond_d3
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v2, 0x13d

    .line 976
    const/4 v3, -0x1

    .line 975
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 978
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_e7
    .catchall {:try_start_d3 .. :try_end_e7} :catchall_ea

    move-object/from16 v5, v18

    .restart local v5    # "d":Landroid/app/Dialog;
    goto :goto_c4

    .line 948
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "d":Landroid/app/Dialog;
    .end local v19    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "showBackground":Z
    :catchall_ea
    move-exception v1

    move-object/from16 v5, v18

    .end local v18    # "d":Landroid/app/Dialog;
    .restart local v5    # "d":Landroid/app/Dialog;
    :goto_ed
    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v19    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "showBackground":Z
    :catchall_f2
    move-exception v1

    goto :goto_ed
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 685
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/AppErrorDialog$Data;

    .line 686
    .local v1, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 687
    const-string/jumbo v9, "anr_show_background"

    .line 686
    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4a

    const/4 v5, 0x1

    .line 688
    .local v5, "showBackground":Z
    :goto_15
    iget-object v10, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 689
    iget-object v3, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 690
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 691
    .local v4, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v3, :cond_4c

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_4c

    .line 692
    sget-object v7, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "App already has crash dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-eqz v4, :cond_45

    .line 694
    sget v7, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_45
    .catchall {:try_start_18 .. :try_end_45} :catchall_ec

    :cond_45
    monitor-exit v10

    .line 688
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 696
    return-void

    .line 686
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v5    # "showBackground":Z
    :cond_4a
    const/4 v5, 0x0

    .restart local v5    # "showBackground":Z
    goto :goto_15

    .line 698
    .restart local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "res":Lcom/android/server/am/AppErrorResult;
    :cond_4c
    :try_start_4c
    iget v7, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 699
    const/16 v9, 0x2710

    .line 698
    if-lt v7, v9, :cond_77

    .line 700
    iget v7, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v7, v9, :cond_75

    const/4 v2, 0x1

    .line 701
    .local v2, "isBackground":Z
    :goto_5d
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v7}, Lcom/android/server/am/UserController;->getCurrentProfileIdsLocked()[I

    move-result-object v11

    array-length v12, v11

    move v9, v8

    .end local v2    # "isBackground":Z
    :goto_67
    if-ge v9, v12, :cond_7b

    aget v6, v11, v9

    .line 702
    .local v6, "userId":I
    iget v7, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v7, v6, :cond_79

    const/4 v7, 0x1

    :goto_70
    and-int/2addr v2, v7

    .line 701
    .local v2, "isBackground":Z
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_67

    .line 700
    .end local v2    # "isBackground":Z
    .end local v6    # "userId":I
    :cond_75
    const/4 v2, 0x0

    .local v2, "isBackground":Z
    goto :goto_5d

    .line 698
    .end local v2    # "isBackground":Z
    :cond_77
    const/4 v2, 0x0

    .restart local v2    # "isBackground":Z
    goto :goto_5d

    .end local v2    # "isBackground":Z
    .restart local v6    # "userId":I
    :cond_79
    move v7, v8

    .line 702
    goto :goto_70

    .line 704
    .end local v6    # "userId":I
    :cond_7b
    if-eqz v2, :cond_7f

    if-eqz v5, :cond_b2

    .line 711
    :cond_7f
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v7, :cond_de

    .line 712
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 713
    :goto_8d
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v7

    if-nez v7, :cond_97

    if-eqz v5, :cond_99

    :cond_97
    if-eqz v0, :cond_e0

    .line 718
    :cond_99
    if-eqz v4, :cond_a0

    .line 719
    sget v7, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_a0
    .catchall {:try_start_4c .. :try_end_a0} :catchall_ec

    :cond_a0
    :goto_a0
    monitor-exit v10

    .line 688
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 724
    iget-object v7, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_b1

    .line 725
    iget-object v7, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 684
    :cond_b1
    return-void

    .line 705
    :cond_b2
    :try_start_b2
    sget-object v7, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skipping crash dialog of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": background"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    if-eqz v4, :cond_d9

    .line 707
    sget v7, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_d9
    .catchall {:try_start_b2 .. :try_end_d9} :catchall_ec

    :cond_d9
    monitor-exit v10

    .line 688
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 709
    return-void

    .line 711
    :cond_de
    const/4 v0, 0x0

    .local v0, "crashSilenced":Z
    goto :goto_8d

    .line 714
    .end local v0    # "crashSilenced":Z
    :cond_e0
    :try_start_e0
    new-instance v7, Lcom/android/server/am/AppErrorDialog;

    iget-object v8, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v7, v8, v9, v1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    iput-object v7, v3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_eb
    .catchall {:try_start_e0 .. :try_end_eb} :catchall_ec

    goto :goto_a0

    .line 688
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_ec
    move-exception v7

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "fromDialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 245
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 246
    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 247
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 248
    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 249
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_10

    .line 250
    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 252
    :cond_10
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_16

    .line 253
    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 255
    :cond_16
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_32

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_32

    .line 256
    const-string/jumbo v2, "user-terminated"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 258
    const-string/jumbo v0, "user request after error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 244
    :cond_32
    return-void
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    .prologue
    .line 235
    if-eqz p1, :cond_18

    .line 236
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_18

    .line 238
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 239
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 234
    .end local v0    # "split":[Ljava/lang/String;
    :cond_18
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .registers 11
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 205
    iget-object v6, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 206
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "ip":I
    :goto_c
    if-ltz v3, :cond_51

    .line 207
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 208
    .local v0, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_45

    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, "remove":Z
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 211
    .local v1, "entUid":I
    if-nez p1, :cond_3d

    .line 212
    const/4 v6, -0x1

    if-ne p3, v6, :cond_35

    .line 213
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_2d

    .line 214
    const/4 v5, 0x1

    .line 224
    :cond_2d
    :goto_2d
    if-eqz v5, :cond_32

    .line 225
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 208
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 217
    :cond_35
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v1, v6, :cond_2d

    .line 218
    const/4 v5, 0x1

    goto :goto_2d

    .line 221
    :cond_3d
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_2d

    .line 222
    const/4 v5, 0x1

    goto :goto_2d

    .line 228
    .end local v1    # "entUid":I
    .end local v5    # "remove":Z
    :cond_45
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_4e

    .line 229
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 206
    :cond_4e
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 204
    .end local v0    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v2, 0x0

    .line 270
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    .line 271
    const/4 v0, 0x0

    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v0, "i":I
    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    .line 272
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 273
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, p1, :cond_22

    .line 271
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 276
    :cond_22
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_64

    if-ne v3, p2, :cond_5a

    .line 277
    move-object v2, v1

    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_27
    monitor-exit v4

    .line 286
    if-nez v2, :cond_67

    .line 287
    sget-object v3, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "crashApplication: nothing for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    const-string/jumbo v5, " initialPid="

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 289
    const-string/jumbo v5, " packageName="

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 280
    .restart local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_5a
    :try_start_5a
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_64

    move-result v3

    if-eqz v3, :cond_1f

    .line 281
    move-object v2, v1

    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    goto :goto_1f

    .line 270
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_64
    move-exception v3

    monitor-exit v4

    throw v3

    .line 293
    :cond_67
    invoke-virtual {v2, p4}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 491
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 493
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentProfileIdsLocked()[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_d
    if-ge v1, v3, :cond_28

    aget v0, v2, v1

    .line 494
    .local v0, "userId":I
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v0, :cond_25

    .line 496
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 495
    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 493
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 499
    .end local v0    # "userId":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 487
    return-void
.end method

.method stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 731
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 733
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 729
    return-void
.end method

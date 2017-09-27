.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 66
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 67
    const-string/jumbo v1, "/system/bin/audioserver"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "/system/bin/cameraserver"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "/system/bin/drmserver"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "/system/bin/mediadrmserver"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "/system/bin/mediaserver"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "/system/bin/sdcard"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "/system/bin/surfaceflinger"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "media.codec"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "media.extractor"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "com.android.bluetooth"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "/system/bin/netd"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 66
    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    const-wide/32 v4, 0xea60

    .line 225
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 233
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 234
    const-string/jumbo v3, "foreground thread"

    move-object v1, p0

    .line 233
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 235
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    const-string/jumbo v3, "main thread"

    move-object v1, p0

    .line 238
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 242
    const-string/jumbo v3, "ui thread"

    move-object v1, p0

    .line 241
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 245
    const-string/jumbo v3, "i/o thread"

    move-object v1, p0

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 248
    const-string/jumbo v3, "display thread"

    move-object v1, p0

    .line 247
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$BinderThreadMonitor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 224
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 342
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 346
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doSysRq(C)V
    .registers 6
    .param p1, "c"    # C

    .prologue
    .line 536
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    .line 538
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 534
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    :goto_e
    return-void

    .line 539
    :catch_f
    move-exception v0

    .line 540
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Watchdog"

    const-string/jumbo v3, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 545
    const-string/jumbo v1, "dalvik.vm.stack-trace-file"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 547
    :cond_10
    return-object v2

    .line 550
    :cond_11
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 551
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 5

    .prologue
    .line 319
    const/4 v2, 0x0

    .line 320
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 321
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 322
    .local v0, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 324
    .end local v0    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1d
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 330
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 331
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 332
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 335
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_22
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .prologue
    .line 217
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 218
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 221
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 286
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .line 284
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 288
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    monitor-exit p0

    .line 283
    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 4
    .param p1, "thread"    # Landroid/os/Handler;

    .prologue
    .line 293
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 292
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 12
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .prologue
    .line 297
    monitor-enter p0

    .line 298
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 299
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .line 297
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 301
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_10

    monitor-exit p0

    .line 296
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 256
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 258
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    .line 259
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    .line 258
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 254
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_1
    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 266
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    .line 263
    return-void

    .line 264
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 310
    const-string/jumbo v2, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rebooting system because: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager;

    .line 313
    .local v1, "pms":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_25
    invoke-interface {v1, v2, p1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    .line 309
    :goto_28
    return-void

    .line 314
    :catch_29
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_28
.end method

.method public run()V
    .registers 41

    .prologue
    .line 351
    const/16 v34, 0x0

    .line 356
    .local v34, "waitedHalf":Z
    :goto_2
    const/4 v9, 0x0

    .line 357
    .local v9, "debuggerWasConnected":I
    monitor-enter p0

    .line 358
    const-wide/16 v30, 0x7530

    .line 361
    .local v30, "timeout":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_2e

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/Watchdog$HandlerChecker;

    .line 363
    .local v15, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v15}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 361
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 374
    .end local v15    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 375
    .local v26, "start":J
    :goto_32
    const-wide/16 v36, 0x0

    cmp-long v35, v30, v36

    if-lez v35, :cond_65

    .line 376
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_62

    move-result v35

    if-eqz v35, :cond_3f

    .line 377
    const/4 v9, 0x2

    .line 380
    :cond_3f
    :try_start_3f
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->wait(J)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_46} :catch_58
    .catchall {:try_start_3f .. :try_end_46} :catchall_62

    .line 384
    :goto_46
    :try_start_46
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 385
    const/4 v9, 0x2

    .line 387
    :cond_4d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    sub-long v36, v36, v26

    const-wide/16 v38, 0x7530

    sub-long v30, v38, v36

    goto :goto_32

    .line 381
    :catch_58
    move-exception v13

    .line 382
    .local v13, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v35, "Watchdog"

    move-object/from16 v0, v35

    invoke-static {v0, v13}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_46 .. :try_end_61} :catchall_62

    goto :goto_46

    .line 357
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v26    # "start":J
    :catchall_62
    move-exception v35

    monitor-exit p0

    throw v35

    .line 390
    .restart local v26    # "start":J
    :cond_65
    :try_start_65
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_62

    move-result v33

    .line 391
    .local v33, "waitState":I
    if-nez v33, :cond_6f

    .line 393
    const/16 v34, 0x0

    :cond_6d
    :goto_6d
    monitor-exit p0

    goto :goto_2

    .line 395
    :cond_6f
    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_6d

    .line 398
    const/16 v35, 0x2

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_ad

    .line 399
    if-nez v34, :cond_6d

    .line 402
    :try_start_81
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v21, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v35, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 404
    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v21

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v35

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    .line 406
    const/16 v34, 0x1

    goto :goto_6d

    .line 412
    .end local v21    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_ad
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 413
    .local v7, "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v25

    .line 414
    .local v25, "subject":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_bb
    .catchall {:try_start_81 .. :try_end_bb} :catchall_62

    .local v6, "allowRestart":Z
    monitor-exit p0

    .line 420
    const/16 v35, 0xaf2

    move/from16 v0, v35

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 422
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .restart local v21    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v35, v0

    if-lez v35, :cond_f2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_f2
    if-eqz v34, :cond_1f7

    const/16 v35, 0x0

    :goto_f6
    sget-object v36, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 427
    move/from16 v0, v35

    move-object/from16 v1, v21

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v23

    .line 432
    .local v23, "stack":Ljava/io/File;
    const-wide/16 v36, 0x7d0

    invoke-static/range {v36 .. v37}, Landroid/os/SystemClock;->sleep(J)V

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 440
    const/16 v35, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 441
    const/16 v35, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 443
    const-string/jumbo v35, "dalvik.vm.stack-trace-file"

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 444
    .local v32, "tracesPath":Ljava/lang/String;
    if-eqz v32, :cond_18f

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v35

    if-eqz v35, :cond_18f

    .line 445
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v29, "traceRenameFile":Ljava/io/File;
    const-string/jumbo v35, "."

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 448
    .local v18, "lpos":I
    const/16 v35, -0x1

    move/from16 v0, v35

    move/from16 v1, v18

    if-eq v0, v1, :cond_1fb

    .line 449
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v36, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v36

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "_SystemServer_WDT"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 452
    .local v20, "newTracesPath":Ljava/lang/String;
    :goto_17d
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 453
    move-object/from16 v32, v20

    .line 456
    .end local v18    # "lpos":I
    .end local v20    # "newTracesPath":Ljava/lang/String;
    .end local v29    # "traceRenameFile":Ljava/io/File;
    :cond_18f
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v19, "newFd":Ljava/io/File;
    :try_start_198
    new-instance v28, Ljava/io/FileWriter;

    const-string/jumbo v35, "/proc/sysrq-trigger"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 461
    .local v28, "sysrq_trigger":Ljava/io/FileWriter;
    const-string/jumbo v35, "w"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileWriter;->close()V
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_1b1} :catch_215

    .line 471
    .end local v28    # "sysrq_trigger":Ljava/io/FileWriter;
    :goto_1b1
    new-instance v10, Lcom/android/server/Watchdog$1;

    const-string/jumbo v35, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 481
    .local v10, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 483
    const-wide/16 v36, 0x7d0

    :try_start_1c6
    move-wide/from16 v0, v36

    invoke-virtual {v10, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_1cb
    .catch Ljava/lang/InterruptedException; {:try_start_1c6 .. :try_end_1cb} :catch_22a

    .line 487
    :goto_1cb
    monitor-enter p0

    .line 488
    :try_start_1cc
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_1d0
    .catchall {:try_start_1cc .. :try_end_1d0} :catchall_22c

    .local v8, "controller":Landroid/app/IActivityController;
    monitor-exit p0

    .line 490
    if-eqz v8, :cond_230

    .line 491
    const-string/jumbo v35, "Watchdog"

    const-string/jumbo v36, "Reporting stuck state to activity controller"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :try_start_1dc
    const-string/jumbo v35, "Service dumps disabled due to hung system process."

    invoke-static/range {v35 .. v35}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v22

    .line 496
    .local v22, "res":I
    if-ltz v22, :cond_230

    .line 497
    const-string/jumbo v35, "Watchdog"

    const-string/jumbo v36, "Activity controller requested to coninue to wait"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f3
    .catch Landroid/os/RemoteException; {:try_start_1dc .. :try_end_1f3} :catch_22f

    .line 498
    const/16 v34, 0x0

    goto/16 :goto_2

    .line 428
    .end local v8    # "controller":Landroid/app/IActivityController;
    .end local v10    # "dropboxThread":Ljava/lang/Thread;
    .end local v19    # "newFd":Ljava/io/File;
    .end local v22    # "res":I
    .end local v23    # "stack":Ljava/io/File;
    .end local v32    # "tracesPath":Ljava/lang/String;
    :cond_1f7
    const/16 v35, 0x1

    goto/16 :goto_f6

    .line 451
    .restart local v18    # "lpos":I
    .restart local v23    # "stack":Ljava/io/File;
    .restart local v29    # "traceRenameFile":Ljava/io/File;
    .restart local v32    # "tracesPath":Ljava/lang/String;
    :cond_1fb
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "_SystemServer_WDT"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "newTracesPath":Ljava/lang/String;
    goto/16 :goto_17d

    .line 463
    .end local v18    # "lpos":I
    .end local v20    # "newTracesPath":Ljava/lang/String;
    .end local v29    # "traceRenameFile":Ljava/io/File;
    .restart local v19    # "newFd":Ljava/io/File;
    :catch_215
    move-exception v12

    .line 464
    .local v12, "e":Ljava/io/IOException;
    const-string/jumbo v35, "Watchdog"

    const-string/jumbo v36, "Failed to write to /proc/sysrq-trigger"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string/jumbo v35, "Watchdog"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b1

    .line 484
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v10    # "dropboxThread":Ljava/lang/Thread;
    :catch_22a
    move-exception v17

    .local v17, "ignored":Ljava/lang/InterruptedException;
    goto :goto_1cb

    .line 487
    .end local v17    # "ignored":Ljava/lang/InterruptedException;
    :catchall_22c
    move-exception v35

    monitor-exit p0

    throw v35

    .line 501
    .restart local v8    # "controller":Landroid/app/IActivityController;
    :catch_22f
    move-exception v11

    .line 506
    :cond_230
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v35

    if-eqz v35, :cond_237

    .line 507
    const/4 v9, 0x2

    .line 509
    :cond_237
    const/16 v35, 0x2

    move/from16 v0, v35

    if-lt v9, v0, :cond_24a

    .line 510
    const-string/jumbo v35, "Watchdog"

    const-string/jumbo v36, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :goto_246
    const/16 v34, 0x0

    goto/16 :goto_2

    .line 511
    :cond_24a
    if-lez v9, :cond_256

    .line 512
    const-string/jumbo v35, "Watchdog"

    const-string/jumbo v36, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_246

    .line 513
    :cond_256
    if-nez v6, :cond_262

    .line 514
    const-string/jumbo v35, "Watchdog"

    const-string/jumbo v36, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_246

    .line 516
    :cond_262
    const-string/jumbo v35, "Watchdog"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v16, 0x0

    :goto_282
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_2ff

    .line 518
    const-string/jumbo v36, "Watchdog"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v37, " stack trace:"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v24

    .line 521
    .local v24, "stackTrace":[Ljava/lang/StackTraceElement;
    const/16 v35, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v36, v0

    :goto_2d5
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_2fc

    aget-object v14, v24, v35

    .line 522
    .local v14, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v37, "Watchdog"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "    at "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    add-int/lit8 v35, v35, 0x1

    goto :goto_2d5

    .line 517
    .end local v14    # "element":Ljava/lang/StackTraceElement;
    :cond_2fc
    add-int/lit8 v16, v16, 0x1

    goto :goto_282

    .line 525
    .end local v24    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_2ff
    const-string/jumbo v35, "Watchdog"

    const-string/jumbo v36, "*** GOODBYE!"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v35

    invoke-static/range {v35 .. v35}, Landroid/os/Process;->killProcess(I)V

    .line 527
    const/16 v35, 0xa

    invoke-static/range {v35 .. v35}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_246
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 271
    return-void

    .line 272
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3
    .param p1, "allowRestart"    # Z

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 277
    return-void

    .line 278
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

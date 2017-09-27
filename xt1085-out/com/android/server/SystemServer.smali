.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030499

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WEAR_CELLULAR_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.cellular.WearCellularMediatorService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WEAR_WIFI_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.wifi.WearWifiMediatorService"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIsAlarmBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 244
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 240
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .prologue
    .line 434
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 435
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 436
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x1030499

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 433
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 237
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 236
    return-void
.end method

.method private performPendingShutdown()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 394
    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    .line 393
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_7f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7f

    .line 396
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_6d

    const/4 v4, 0x1

    .line 399
    .local v4, "reboot":Z
    :goto_1e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_6f

    .line 400
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 410
    :goto_2c
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 411
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 413
    const/4 v1, 0x0

    .line 415
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_46
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_71

    move-result-object v1

    .line 420
    .end local v1    # "filename":Ljava/lang/String;
    :goto_4a
    if-eqz v1, :cond_7c

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 421
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7c

    .line 422
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 396
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_6d
    const/4 v4, 0x0

    .restart local v4    # "reboot":Z
    goto :goto_1e

    .line 402
    :cond_6f
    const/4 v3, 0x0

    .local v3, "reason":Ljava/lang/String;
    goto :goto_2c

    .line 416
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_71
    move-exception v0

    .line 417
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_7c
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 392
    .end local v4    # "reboot":Z
    :cond_7f
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 388
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    return-void
.end method

.method private run()V
    .registers 11

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v8, 0x80000

    .line 262
    :try_start_6
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_26

    .line 268
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 280
    :cond_26
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_5c
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 300
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 304
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 305
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 306
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    .line 311
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    .line 306
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 315
    :cond_9c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 319
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 323
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 327
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 331
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 334
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 337
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 341
    const/4 v0, -0x2

    .line 340
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 342
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 343
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 346
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 353
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 356
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 357
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->setRuntimeRestarted(Z)V

    .line 358
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_ef
    .catchall {:try_start_6 .. :try_end_ef} :catchall_122

    .line 360
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 365
    :try_start_f2
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 367
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 368
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_104} :catch_127
    .catchall {:try_start_f2 .. :try_end_104} :catchall_13b

    .line 374
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 378
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 379
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_116
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :catchall_122
    move-exception v0

    .line 360
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 359
    throw v0

    .line 369
    :catch_127
    move-exception v6

    .line 370
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_128
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    throw v6
    :try_end_13b
    .catchall {:try_start_128 .. :try_end_13b} :catchall_13b

    .line 373
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_13b
    move-exception v0

    .line 374
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 373
    throw v0
.end method

.method private startBootstrapServices()V
    .registers 13

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/32 v10, 0x80000

    .line 450
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 453
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 454
    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 453
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 455
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 456
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 462
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 466
    const-string/jumbo v5, "InitPowerManagement"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 467
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 468
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 471
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 475
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 478
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 481
    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v5, "ro.alarm_boot"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    .line 484
    const-string/jumbo v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 485
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 498
    :cond_83
    :goto_83
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 499
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Regionalization Service"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 501
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v5, "regionalization"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 505
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_9d
    const-string/jumbo v5, "StartPackageManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 506
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 507
    iget v5, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v5, :cond_11e

    move v5, v6

    :goto_aa
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 506
    invoke-static {v8, v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 508
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 509
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 510
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 515
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_e2

    .line 516
    const-string/jumbo v5, "config.disable_otadexopt"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 518
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_e2

    .line 519
    const-string/jumbo v5, "StartOtaDexOptService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 521
    :try_start_d8
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_df} :catch_120
    .catchall {:try_start_d8 .. :try_end_df} :catchall_12b

    .line 525
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 530
    .end local v1    # "disableOtaDexopt":Z
    :cond_e2
    :goto_e2
    const-string/jumbo v5, "StartUserManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 531
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 532
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 535
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 538
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 542
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 446
    return-void

    .line 487
    :cond_100
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 488
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Device encrypted - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_83

    .line 490
    :cond_116
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v5, :cond_83

    .line 495
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_83

    :cond_11e
    move v5, v7

    .line 507
    goto :goto_aa

    .line 522
    .restart local v1    # "disableOtaDexopt":Z
    :catch_120
    move-exception v2

    .line 523
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_121
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-direct {p0, v5, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_127
    .catchall {:try_start_121 .. :try_end_127} :catchall_12b

    .line 525
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_e2

    .line 524
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_12b
    move-exception v5

    .line 525
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 524
    throw v5
.end method

.method private startCoreServices()V
    .registers 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 553
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 554
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 555
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 554
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 548
    return-void
.end method

.method private startOtherServices()V
    .registers 109

    .prologue
    .line 566
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 567
    .local v6, "context":Landroid/content/Context;
    const/16 v96, 0x0

    .line 568
    .local v96, "vibrator":Lcom/android/server/VibratorService;
    const/16 v76, 0x0

    .line 569
    .local v76, "mountService":Landroid/os/storage/IMountService;
    const/16 v77, 0x0

    .line 570
    .local v77, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v82, 0x0

    .line 571
    .local v82, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v78, 0x0

    .line 572
    .local v78, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v28, 0x0

    .line 573
    .local v28, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v80, 0x0

    .line 574
    .local v80, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v90, 0x0

    .line 575
    .local v90, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v105, 0x0

    .line 576
    .local v105, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v87, 0x0

    .line 577
    .local v87, "serial":Lcom/android/server/SerialService;
    const/16 v83, 0x0

    .line 578
    .local v83, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v25, 0x0

    .line 579
    .local v25, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v64, 0x0

    .line 580
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v94, 0x0

    .line 581
    .local v94, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v31, 0x0

    .line 582
    .local v31, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v20, 0x0

    .line 583
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v61, 0x0

    .line 584
    .local v61, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v103, 0x0

    .line 585
    .local v103, "wigigP2pService":Ljava/lang/Object;
    const/16 v104, 0x0

    .line 587
    .local v104, "wigigService":Ljava/lang/Object;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 588
    .local v49, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 589
    .local v37, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 590
    .local v40, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 591
    .local v50, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    .line 592
    .local v44, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 593
    .local v42, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 594
    .local v43, "disableNetworkTime":Z
    const-string/jumbo v4, "config.disable_rtt"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 595
    .local v45, "disableRtt":Z
    const-string/jumbo v4, "config.disable_mediaproj"

    .line 596
    const/4 v5, 0x0

    .line 595
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 597
    .local v41, "disableMediaProjection":Z
    const-string/jumbo v4, "config.disable_serial"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 598
    .local v48, "disableSerial":Z
    const-string/jumbo v4, "config.disable_searchmanager"

    .line 599
    const/4 v5, 0x0

    .line 598
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 600
    .local v47, "disableSearchManager":Z
    const-string/jumbo v4, "config.disable_trustmanager"

    .line 601
    const/4 v5, 0x0

    .line 600
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 602
    .local v52, "disableTrustManager":Z
    const-string/jumbo v4, "config.disable_textservices"

    .line 603
    const/4 v5, 0x0

    .line 602
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 604
    .local v51, "disableTextServices":Z
    const-string/jumbo v4, "config.disable_samplingprof"

    .line 605
    const/4 v5, 0x0

    .line 604
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 606
    .local v46, "disableSamplingProfiler":Z
    const-string/jumbo v4, "config.disable_consumerir"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 607
    .local v39, "disableConsumerIr":Z
    const-string/jumbo v4, "config.disable_vrmanager"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 608
    .local v53, "disableVrManager":Z
    const-string/jumbo v4, "config.disable_cameraservice"

    .line 609
    const/4 v5, 0x0

    .line 608
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 611
    .local v38, "disableCameraService":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    .line 612
    .local v66, "isEmulator":Z
    const-string/jumbo v4, "persist.wigig.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 614
    .local v57, "enableWigig":Z
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 615
    const v5, 0x3f060005

    .line 614
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 616
    .local v58, "externalServer":Ljava/lang/String;
    const-string/jumbo v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 619
    .local v36, "disableAtlas":Z
    :try_start_db
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 622
    const-string/jumbo v4, "StartSchedulingPolicyService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 623
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 624
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 628
    const-string/jumbo v4, "StartTelephonyRegistry"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 629
    new-instance v95, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v95

    invoke-direct {v0, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_114
    .catch Ljava/lang/RuntimeException; {:try_start_db .. :try_end_114} :catch_f93

    .line 630
    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_114
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v95

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 631
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    const-string/jumbo v4, "StartEntropyMixer"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 634
    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 635
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 637
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 639
    if-nez v38, :cond_153

    .line 640
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 645
    :cond_153
    const-string/jumbo v4, "StartAccountManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 647
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    const-string/jumbo v4, "StartContentService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 651
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 653
    const-string/jumbo v4, "InstallSystemProviders"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 655
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 657
    const-string/jumbo v4, "StartVibratorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 658
    new-instance v97, Lcom/android/server/VibratorService;

    move-object/from16 v0, v97

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_19f
    .catch Ljava/lang/RuntimeException; {:try_start_114 .. :try_end_19f} :catch_f96

    .line 659
    .local v97, "vibrator":Lcom/android/server/VibratorService;
    :try_start_19f
    const-string/jumbo v4, "vibrator"

    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 660
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 662
    if-nez v39, :cond_1cc

    .line 663
    const-string/jumbo v4, "StartConsumerIrService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 664
    new-instance v32, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v32

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_1bc
    .catch Ljava/lang/RuntimeException; {:try_start_19f .. :try_end_1bc} :catch_f9b

    .line 665
    .local v32, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_1bc
    const-string/jumbo v4, "consumer_ir"

    .end local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 666
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1ca
    .catch Ljava/lang/RuntimeException; {:try_start_1bc .. :try_end_1ca} :catch_fa2

    move-object/from16 v31, v32

    .line 669
    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :cond_1cc
    :try_start_1cc
    const-string/jumbo v4, "StartAlarmManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 671
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 673
    const-string/jumbo v4, "InitWatchdog"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v99

    .line 675
    .local v99, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v99

    invoke-virtual {v0, v6, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 676
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 678
    const-string/jumbo v4, "StartInputManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 679
    new-instance v65, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v6}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_207
    .catch Ljava/lang/RuntimeException; {:try_start_1cc .. :try_end_207} :catch_f9b

    .line 680
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v4, 0x80000

    :try_start_20a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 682
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_bf6

    const/4 v4, 0x1

    move v5, v4

    .line 685
    :goto_21c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_bfa

    const/4 v4, 0x0

    :goto_223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v106, v0

    .line 683
    move-object/from16 v0, v65

    move/from16 v1, v106

    invoke-static {v6, v0, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v105

    .line 686
    .local v105, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 687
    const-string/jumbo v4, "input"

    move-object/from16 v0, v65

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 688
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 690
    if-nez v53, :cond_25e

    .line 691
    const-string/jumbo v4, "StartVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 693
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 696
    :cond_25e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 698
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 699
    invoke-virtual/range {v65 .. v65}, Lcom/android/server/input/InputManagerService;->start()V

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 707
    if-eqz v66, :cond_bfd

    .line 708
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :goto_285
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 722
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 724
    const-string/jumbo v4, "IpConnectivityMetrics"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 726
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 728
    const-string/jumbo v4, "PinnerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 730
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2c4
    .catch Ljava/lang/RuntimeException; {:try_start_20a .. :try_end_2c4} :catch_c0f

    move-object/from16 v94, v95

    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v94, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v64, v65

    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v96, v97

    .line 736
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .end local v99    # "watchdog":Lcom/android/server/Watchdog;
    .end local v105    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_2ca
    const/16 v91, 0x0

    .line 737
    .local v91, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v85, 0x0

    .line 738
    .local v85, "notification":Landroid/app/INotificationManager;
    const/16 v67, 0x0

    .line 739
    .local v67, "location":Lcom/android/server/LocationManagerService;
    const/16 v33, 0x0

    .line 740
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v69, 0x0

    .line 741
    .local v69, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v21, 0x0

    .line 742
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v71, 0x0

    .line 743
    .local v71, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v59, 0x0

    .line 746
    .local v59, "gestureService":Lcom/android/server/gesture/GestureService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_301

    .line 747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 749
    const-string/jumbo v4, "StartAccessibilityManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 751
    :try_start_2f0
    const-string/jumbo v4, "accessibility"

    .line 752
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 751
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2fb
    .catch Ljava/lang/Throwable; {:try_start_2f0 .. :try_end_2fb} :catch_c5c

    .line 756
    :goto_2fb
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 760
    :cond_301
    :try_start_301
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_304
    .catch Ljava/lang/Throwable; {:try_start_301 .. :try_end_304} :catch_c69

    .line 765
    :goto_304
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_31d

    .line 766
    if-nez v49, :cond_31d

    .line 767
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c76

    .line 784
    .end local v76    # "mountService":Landroid/os/storage/IMountService;
    :cond_31d
    :goto_31d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 786
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_344

    .line 787
    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 789
    :try_start_337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_33e
    .catch Ljava/lang/Throwable; {:try_start_337 .. :try_end_33e} :catch_c9a

    .line 793
    :goto_33e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 796
    :cond_344
    const-string/jumbo v4, "PerformFstrimIfNeeded"

    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 798
    :try_start_34f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_356
    .catch Ljava/lang/Throwable; {:try_start_34f .. :try_end_356} :catch_ca7

    .line 802
    :goto_356
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 804
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_966

    .line 805
    if-nez v44, :cond_3b1

    .line 806
    const-string/jumbo v4, "StartLockSettingsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 808
    :try_start_36b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 810
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 809
    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_37f
    .catch Ljava/lang/Throwable; {:try_start_36b .. :try_end_37f} :catch_cb4

    move-result-object v69

    .line 814
    .end local v69    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_380
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 816
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39f

    .line 817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 820
    :cond_39f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 827
    :cond_3b1
    if-nez v50, :cond_3d2

    .line 828
    const-string/jumbo v4, "StartStatusBarManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 830
    :try_start_3b9
    new-instance v92, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v92

    move-object/from16 v1, v105

    invoke-direct {v0, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_3c2
    .catch Ljava/lang/Throwable; {:try_start_3b9 .. :try_end_3c2} :catch_cc1

    .line 831
    .end local v91    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v92, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_3c2
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3ca
    .catch Ljava/lang/Throwable; {:try_start_3c2 .. :try_end_3ca} :catch_f8e

    move-object/from16 v91, v92

    .line 835
    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_3cc
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 838
    :cond_3d2
    if-nez v44, :cond_3eb

    .line 839
    const-string/jumbo v4, "StartClipboardService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 841
    :try_start_3da
    const-string/jumbo v4, "clipboard"

    .line 842
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v6}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 841
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e5
    .catch Ljava/lang/Throwable; {:try_start_3da .. :try_end_3e5} :catch_cce

    .line 846
    :goto_3e5
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 849
    :cond_3eb
    if-nez v42, :cond_405

    .line 850
    const-string/jumbo v4, "StartNetworkManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 852
    :try_start_3f3
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v77

    .line 853
    .local v77, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3ff
    .catch Ljava/lang/Throwable; {:try_start_3f3 .. :try_end_3ff} :catch_cdb

    .line 857
    .end local v77    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_3ff
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 860
    :cond_405
    if-nez v44, :cond_409

    if-eqz v51, :cond_ce8

    .line 864
    :cond_409
    :goto_409
    if-nez v42, :cond_5a7

    .line 865
    const-string/jumbo v4, "StartNetworkScoreService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 867
    :try_start_411
    new-instance v81, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v81

    invoke-direct {v0, v6}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_418
    .catch Ljava/lang/Throwable; {:try_start_411 .. :try_end_418} :catch_cf3

    .line 868
    .end local v80    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_418
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v81

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_420
    .catch Ljava/lang/Throwable; {:try_start_418 .. :try_end_420} :catch_f89

    move-object/from16 v80, v81

    .line 872
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_422
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 874
    const-string/jumbo v4, "StartNetworkStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 876
    :try_start_42e
    move-object/from16 v0, v77

    invoke-static {v6, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v82

    .line 877
    .local v82, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43c
    .catch Ljava/lang/Throwable; {:try_start_42e .. :try_end_43c} :catch_d00

    .line 881
    .end local v82    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_43c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 883
    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 885
    :try_start_448
    new-instance v79, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 885
    move-object/from16 v0, v79

    move-object/from16 v1, v82

    move-object/from16 v2, v77

    invoke-direct {v0, v6, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_457
    .catch Ljava/lang/Throwable; {:try_start_448 .. :try_end_457} :catch_d0d

    .line 887
    .end local v78    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v79, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_457
    const-string/jumbo v4, "netpolicy"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45f
    .catch Ljava/lang/Throwable; {:try_start_457 .. :try_end_45f} :catch_f84

    move-object/from16 v78, v79

    .line 891
    .end local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_461
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 893
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.wifi.nan"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1a

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 898
    :goto_47e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 901
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    .line 900
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 903
    if-nez v45, :cond_4a8

    .line 904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 907
    :cond_4a8
    if-eqz v57, :cond_53a

    .line 909
    :try_start_4aa
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wigig Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    new-instance v101, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/wigig-service.jar"

    .line 912
    const-string/jumbo v5, "/system/lib64:/system/vendor/lib64"

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v106

    invoke-virtual/range {v106 .. v106}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v106

    .line 911
    move-object/from16 v0, v101

    move-object/from16 v1, v106

    invoke-direct {v0, v4, v5, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 915
    .local v101, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 914
    move-object/from16 v0, v101

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v102

    .line 916
    .local v102, "wigigP2pClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v106, 0x0

    aput-object v5, v4, v106

    move-object/from16 v0, v102

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v35

    .line 917
    .local v35, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v103

    .line 918
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v0, v103

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 922
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.WigigService"

    .line 921
    move-object/from16 v0, v101

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v100

    .line 923
    .local v100, "wigigClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v106, 0x0

    aput-object v5, v4, v106

    move-object/from16 v0, v100

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v35

    .line 924
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v104

    .line 925
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string/jumbo v5, "wigig"

    move-object/from16 v0, v104

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53a
    .catch Ljava/lang/Throwable; {:try_start_4aa .. :try_end_53a} :catch_d25

    .line 932
    .end local v35    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v100    # "wigigClass":Ljava/lang/Class;
    .end local v101    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v102    # "wigigP2pClass":Ljava/lang/Class;
    .end local v103    # "wigigP2pService":Ljava/lang/Object;
    .end local v104    # "wigigService":Ljava/lang/Object;
    :cond_53a
    :goto_53a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_554

    .line 933
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 932
    if-eqz v4, :cond_55e

    .line 934
    :cond_554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 937
    :cond_55e
    const-string/jumbo v4, "StartConnectivityService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 939
    :try_start_564
    new-instance v29, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v29

    move-object/from16 v1, v77

    move-object/from16 v2, v82

    move-object/from16 v3, v78

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_571
    .catch Ljava/lang/Throwable; {:try_start_564 .. :try_end_571} :catch_d32

    .line 941
    .end local v28    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v29, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_571
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 942
    move-object/from16 v0, v82

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 943
    move-object/from16 v0, v78

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_587
    .catch Ljava/lang/Throwable; {:try_start_571 .. :try_end_587} :catch_f7f

    move-object/from16 v28, v29

    .line 947
    .end local v29    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_589
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 949
    const-string/jumbo v4, "StartNsdService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 951
    :try_start_595
    invoke-static {v6}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v90

    .line 953
    .local v90, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 952
    move-object/from16 v0, v90

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a1
    .catch Ljava/lang/Throwable; {:try_start_595 .. :try_end_5a1} :catch_d3f

    .line 957
    .end local v90    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_5a1
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 960
    :cond_5a7
    if-nez v44, :cond_5c0

    .line 961
    const-string/jumbo v4, "StartUpdateLockService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 963
    :try_start_5af
    const-string/jumbo v4, "updatelock"

    .line 964
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 963
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5ba
    .catch Ljava/lang/Throwable; {:try_start_5af .. :try_end_5ba} :catch_d4c

    .line 968
    :goto_5ba
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 971
    :cond_5c0
    if-nez v44, :cond_5cb

    .line 972
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 980
    :cond_5cb
    if-eqz v76, :cond_5d3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_d59

    .line 989
    :cond_5d3
    :goto_5d3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 991
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 990
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v85

    .line 992
    .local v85, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v78

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 996
    if-nez v40, :cond_633

    .line 997
    const-string/jumbo v4, "StartLocationManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 999
    :try_start_5ff
    new-instance v68, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_606
    .catch Ljava/lang/Throwable; {:try_start_5ff .. :try_end_606} :catch_d71

    .line 1000
    .end local v67    # "location":Lcom/android/server/LocationManagerService;
    .local v68, "location":Lcom/android/server/LocationManagerService;
    :try_start_606
    const-string/jumbo v4, "location"

    move-object/from16 v0, v68

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60e
    .catch Ljava/lang/Throwable; {:try_start_606 .. :try_end_60e} :catch_f7a

    move-object/from16 v67, v68

    .line 1004
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    :goto_610
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1006
    const-string/jumbo v4, "StartCountryDetectorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1008
    :try_start_61c
    new-instance v34, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_623
    .catch Ljava/lang/Throwable; {:try_start_61c .. :try_end_623} :catch_d7e

    .line 1009
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v34, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_623
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62b
    .catch Ljava/lang/Throwable; {:try_start_623 .. :try_end_62b} :catch_f75

    move-object/from16 v33, v34

    .line 1013
    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_62d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1016
    :cond_633
    if-nez v44, :cond_637

    if-eqz v47, :cond_d8b

    .line 1026
    :cond_637
    :goto_637
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1028
    if-nez v44, :cond_655

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1029
    const v5, 0x1120059

    .line 1028
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_655

    .line 1029
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_daf

    .line 1035
    :cond_655
    :goto_655
    const-string/jumbo v4, "StartAudioService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1037
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1039
    if-nez v44, :cond_682

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1042
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_682

    .line 1047
    :cond_682
    const-string/jumbo v4, "StartWiredAccessoryManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1051
    :try_start_688
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v64

    invoke-direct {v4, v6, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1050
    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_694
    .catch Ljava/lang/Throwable; {:try_start_688 .. :try_end_694} :catch_dc7

    .line 1055
    :goto_694
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1057
    if-nez v44, :cond_729

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b3

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1063
    :cond_6b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6cd

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1065
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 1064
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1063
    if-eqz v4, :cond_6e8

    .line 1067
    :cond_6cd
    const-string/jumbo v4, "StartUsbService"

    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1069
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1072
    :cond_6e8
    if-nez v48, :cond_707

    .line 1073
    const-string/jumbo v4, "StartSerialService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1076
    :try_start_6f0
    new-instance v88, Lcom/android/server/SerialService;

    move-object/from16 v0, v88

    invoke-direct {v0, v6}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_6f7
    .catch Ljava/lang/Throwable; {:try_start_6f0 .. :try_end_6f7} :catch_dd4

    .line 1077
    .end local v87    # "serial":Lcom/android/server/SerialService;
    .local v88, "serial":Lcom/android/server/SerialService;
    :try_start_6f7
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6ff
    .catch Ljava/lang/Throwable; {:try_start_6f7 .. :try_end_6ff} :catch_f70

    move-object/from16 v87, v88

    .line 1081
    .end local v88    # "serial":Lcom/android/server/SerialService;
    :goto_701
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1085
    :cond_707
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    .line 1084
    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1087
    :try_start_712
    new-instance v62, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v62

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_719
    .catch Ljava/lang/Throwable; {:try_start_712 .. :try_end_719} :catch_de2

    .line 1088
    .end local v61    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v62, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_719
    const-string/jumbo v4, "hardware_properties"

    move-object/from16 v0, v62

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_721
    .catch Ljava/lang/Throwable; {:try_start_719 .. :try_end_721} :catch_f6b

    move-object/from16 v61, v62

    .line 1093
    .end local v62    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_723
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1096
    :cond_729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1098
    invoke-static {v6}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_741

    .line 1099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1102
    :cond_741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1106
    if-nez v44, :cond_7d5

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76c

    .line 1108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1111
    :cond_76c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_786

    .line 1112
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1111
    if-eqz v4, :cond_790

    .line 1113
    :cond_786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1116
    :cond_790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a7

    .line 1117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1120
    :cond_7a7
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_7c3

    .line 1121
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1124
    :cond_7c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1128
    :cond_7d5
    const-string/jumbo v4, "StartDiskStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1130
    :try_start_7db
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e6
    .catch Ljava/lang/Throwable; {:try_start_7db .. :try_end_7e6} :catch_df0

    .line 1134
    :goto_7e6
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1136
    if-nez v46, :cond_805

    .line 1137
    const-string/jumbo v4, "StartSamplingProfilerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1143
    :try_start_7f4
    const-string/jumbo v4, "samplingprofiler"

    .line 1144
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v6}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1143
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7ff
    .catch Ljava/lang/Throwable; {:try_start_7f4 .. :try_end_7ff} :catch_dfd

    .line 1148
    :goto_7ff
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1151
    :cond_805
    if-nez v42, :cond_809

    if-eqz v43, :cond_e0a

    .line 1162
    .end local v83    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_809
    :goto_809
    const-string/jumbo v4, "StartCommonTimeManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1164
    :try_start_80f
    new-instance v26, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_816
    .catch Ljava/lang/Throwable; {:try_start_80f .. :try_end_816} :catch_e35

    .line 1165
    .end local v25    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v26, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_816
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81e
    .catch Ljava/lang/Throwable; {:try_start_816 .. :try_end_81e} :catch_f61

    move-object/from16 v25, v26

    .line 1169
    .end local v26    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_820
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1171
    if-nez v42, :cond_83b

    .line 1172
    const-string/jumbo v4, "CertBlacklister"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1174
    :try_start_82e
    new-instance v24, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_835
    .catch Ljava/lang/Throwable; {:try_start_82e .. :try_end_835} :catch_e42

    .line 1178
    :goto_835
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1181
    :cond_83b
    if-nez v42, :cond_83f

    if-eqz v44, :cond_e4f

    .line 1186
    :cond_83f
    :goto_83f
    if-nez v44, :cond_84a

    .line 1188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1191
    :cond_84a
    if-nez v44, :cond_84e

    if-eqz v36, :cond_e5a

    .line 1202
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_84e
    :goto_84e
    if-nez v44, :cond_85b

    .line 1203
    const-string/jumbo v4, "graphicsstats"

    .line 1204
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 1203
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1207
    :cond_85b
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1208
    const v5, 0x11200a4

    .line 1207
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_884

    .line 1210
    :try_start_868
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Sensor Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    new-instance v60, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v60

    move-object/from16 v1, v64

    invoke-direct {v0, v6, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_87a
    .catch Ljava/lang/Throwable; {:try_start_868 .. :try_end_87a} :catch_e85

    .line 1212
    .end local v59    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v60, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_87a
    const-string/jumbo v4, "gesture"

    move-object/from16 v0, v60

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_882
    .catch Ljava/lang/Throwable; {:try_start_87a .. :try_end_882} :catch_f57

    move-object/from16 v59, v60

    .line 1218
    .end local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_884
    :goto_884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89b

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1222
    :cond_89b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8c3

    .line 1227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1230
    :cond_8c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8d9

    .line 1231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1234
    :cond_8d9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.picture_in_picture"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8ef

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1238
    :cond_8ef
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.leanback"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_905

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1242
    :cond_905
    if-nez v44, :cond_954

    .line 1243
    const-string/jumbo v4, "StartMediaRouterService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1245
    :try_start_90d
    new-instance v72, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v72

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_914
    .catch Ljava/lang/Throwable; {:try_start_90d .. :try_end_914} :catch_e93

    .line 1246
    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_914
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v72

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_91c
    .catch Ljava/lang/Throwable; {:try_start_914 .. :try_end_91c} :catch_f52

    move-object/from16 v71, v72

    .line 1250
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_91e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1252
    if-nez v52, :cond_92f

    .line 1253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1256
    :cond_92f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_945

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1260
    :cond_945
    const-string/jumbo v4, "StartBackgroundDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1262
    :try_start_94b
    invoke-static {v6}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_94e
    .catch Ljava/lang/Throwable; {:try_start_94b .. :try_end_94e} :catch_ea0

    .line 1266
    :goto_94e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1269
    :cond_954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1274
    .end local v85    # "notification":Landroid/app/INotificationManager;
    :cond_966
    if-nez v44, :cond_96a

    if-eqz v41, :cond_ead

    .line 1278
    :cond_96a
    :goto_96a
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9ab

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.bluetooth.WearBluetoothService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.wifi.WearWifiMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1282
    const-string/jumbo v4, "config.enable_cellmediator"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_99f

    .line 1283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.cellular.WearCellularMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1285
    :cond_99f
    if-nez v44, :cond_9ab

    .line 1286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1291
    :cond_9ab
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "adb_port"

    .line 1292
    const-string/jumbo v106, "service.adb.tcp.port"

    const-string/jumbo v107, "-1"

    invoke-static/range {v106 .. v107}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-static/range {v106 .. v106}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v106

    .line 1291
    move/from16 v0, v106

    invoke-static {v4, v5, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1296
    const-string/jumbo v5, "adb_port"

    invoke-static {v5}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1297
    new-instance v106, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, v106

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    const/16 v107, 0x0

    .line 1295
    move/from16 v0, v107

    move-object/from16 v1, v106

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1301
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v86

    .line 1302
    .local v86, "safeMode":Z
    if-eqz v86, :cond_eb8

    .line 1303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1305
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1312
    :goto_9f6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v20

    .end local v20    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v20, Lcom/android/server/MmsServiceBroker;

    .line 1316
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_a02
    invoke-static/range {v58 .. v58}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v89

    .line 1317
    .local v89, "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v106, 0x0

    aput-object v5, v4, v106

    move-object/from16 v0, v89

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v30

    .line 1318
    .local v30, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1319
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/16 v106, 0x0

    aput-object v5, v4, v106

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 1320
    .local v23, "baseObject":Ljava/lang/Object;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "run"

    const/16 v106, 0x0

    move/from16 v0, v106

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v73

    .line 1321
    .local v73, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1322
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v73

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a02 .. :try_end_a51} :catch_ec1
    .catch Ljava/lang/IllegalAccessException; {:try_start_a02 .. :try_end_a51} :catch_ec1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a02 .. :try_end_a51} :catch_ec1
    .catch Ljava/lang/InstantiationException; {:try_start_a02 .. :try_end_a51} :catch_ec1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a02 .. :try_end_a51} :catch_ec1

    .line 1332
    .end local v23    # "baseObject":Ljava/lang/Object;
    .end local v30    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v73    # "method":Ljava/lang/reflect/Method;
    .end local v89    # "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "device_provisioned"

    const/16 v106, 0x0

    move/from16 v0, v106

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a6c

    .line 1333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    .line 1332
    if-eqz v4, :cond_a75

    .line 1334
    :cond_a6c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1339
    :cond_a75
    const-string/jumbo v4, "MakeVibratorServiceReady"

    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1341
    :try_start_a80
    invoke-virtual/range {v96 .. v96}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_a83
    .catch Ljava/lang/Throwable; {:try_start_a80 .. :try_end_a83} :catch_eea

    .line 1345
    :goto_a83
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1347
    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1348
    if-eqz v69, :cond_a99

    .line 1350
    :try_start_a96
    invoke-interface/range {v69 .. v69}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_a99
    .catch Ljava/lang/Throwable; {:try_start_a96 .. :try_end_a99} :catch_ef7

    .line 1355
    :cond_a99
    :goto_a99
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1362
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1366
    if-eqz v57, :cond_b21

    .line 1368
    :try_start_abe
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "calling onBootPhase for Wigig Services"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-virtual/range {v103 .. v103}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v102

    .line 1370
    .restart local v102    # "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v106, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v107, 0x0

    aput-object v106, v5, v107

    move-object/from16 v0, v102

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v70

    .line 1371
    .local v70, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1372
    const/16 v106, 0x1f4

    .line 1371
    move/from16 v0, v106

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v106, 0x0

    aput-object v5, v4, v106

    move-object/from16 v0, v70

    move-object/from16 v1, v103

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    invoke-virtual/range {v104 .. v104}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v100

    .line 1375
    .restart local v100    # "wigigClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v106, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v107, 0x0

    aput-object v106, v5, v107

    move-object/from16 v0, v100

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v70

    .line 1376
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1377
    const/16 v106, 0x1f4

    .line 1376
    move/from16 v0, v106

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v106, 0x0

    aput-object v5, v4, v106

    move-object/from16 v0, v70

    move-object/from16 v1, v104

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b21
    .catch Ljava/lang/Throwable; {:try_start_abe .. :try_end_b21} :catch_f04

    .line 1384
    .end local v70    # "m":Ljava/lang/reflect/Method;
    .end local v100    # "wigigClass":Ljava/lang/Class;
    .end local v102    # "wigigP2pClass":Ljava/lang/Class;
    :cond_b21
    :goto_b21
    :try_start_b21
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_b24
    .catch Ljava/lang/Throwable; {:try_start_b21 .. :try_end_b24} :catch_f11

    .line 1388
    :goto_b24
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1390
    if-eqz v86, :cond_b33

    .line 1391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1397
    :cond_b33
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    .line 1398
    .local v27, "config":Landroid/content/res/Configuration;
    new-instance v74, Landroid/util/DisplayMetrics;

    invoke-direct/range {v74 .. v74}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1399
    .local v74, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/view/WindowManager;

    .line 1400
    .local v98, "w":Landroid/view/WindowManager;
    invoke-interface/range {v98 .. v98}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1401
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v27

    move-object/from16 v1, v74

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1404
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v93

    .line 1405
    .local v93, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v93 .. v93}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_b66

    .line 1406
    invoke-virtual/range {v93 .. v93}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1409
    :cond_b66
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1412
    :try_start_b71
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 1413
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_b86
    .catch Ljava/lang/Throwable; {:try_start_b71 .. :try_end_b86} :catch_f1e

    .line 1417
    :goto_b86
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1419
    const-string/jumbo v4, "MakePackageManagerServiceReady"

    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1421
    :try_start_b97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_b9e
    .catch Ljava/lang/Throwable; {:try_start_b97 .. :try_end_b9e} :catch_f2b

    .line 1425
    :goto_b9e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1427
    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1430
    :try_start_baf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v86

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_bbc
    .catch Ljava/lang/Throwable; {:try_start_baf .. :try_end_bbc} :catch_f38

    .line 1434
    :goto_bbc
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1436
    if-eqz v59, :cond_bc7

    .line 1438
    :try_start_bc4
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_bc7
    .catch Ljava/lang/Throwable; {:try_start_bc4 .. :try_end_bc7} :catch_f45

    .line 1445
    :cond_bc7
    :goto_bc7
    move-object/from16 v8, v77

    .line 1446
    .local v8, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v9, v82

    .line 1447
    .local v9, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v10, v78

    .line 1448
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v11, v28

    .line 1449
    .local v11, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v7, v80

    .line 1450
    .local v7, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v12, v67

    .line 1451
    .local v12, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v13, v33

    .line 1452
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v14, v83

    .line 1453
    .local v14, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v15, v25

    .line 1454
    .local v15, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v16, v21

    .line 1455
    .local v16, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v17, v64

    .line 1456
    .local v17, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v18, v94

    .line 1457
    .local v18, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v71

    .line 1458
    .local v19, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v75, v20

    .line 1465
    .local v75, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v106, v0

    new-instance v4, Lcom/android/server/SystemServer$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v20}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v0, v106

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 565
    return-void

    .line 684
    .end local v7    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v8    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v9    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v12    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v13    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v14    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v15    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v16    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v17    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v18    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v19    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v74    # "metrics":Landroid/util/DisplayMetrics;
    .end local v75    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v86    # "safeMode":Z
    .end local v93    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v98    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v25    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v28    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v61    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v76    # "mountService":Landroid/os/storage/IMountService;
    .local v77, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v78    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v80    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v82, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v83    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v87    # "serial":Lcom/android/server/SerialService;
    .local v90, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v103    # "wigigP2pService":Ljava/lang/Object;
    .restart local v104    # "wigigService":Ljava/lang/Object;
    .local v105, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_bf6
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_21c

    .line 685
    :cond_bfa
    const/4 v4, 0x1

    goto/16 :goto_223

    .line 709
    .local v105, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_bfd
    :try_start_bfd
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c2c

    .line 710
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0d
    .catch Ljava/lang/RuntimeException; {:try_start_bfd .. :try_end_c0d} :catch_c0f

    goto/16 :goto_285

    .line 731
    .end local v105    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_c0f
    move-exception v55

    .local v55, "e":Ljava/lang/RuntimeException;
    move-object/from16 v94, v95

    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v64, v65

    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v96, v97

    .line 732
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .end local v99    # "watchdog":Lcom/android/server/Watchdog;
    :goto_c16
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2ca

    .line 711
    .end local v55    # "e":Ljava/lang/RuntimeException;
    .restart local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v105    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_c2c
    :try_start_c2c
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 712
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 711
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c44

    .line 713
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_285

    .line 714
    :cond_c44
    if-eqz v37, :cond_c51

    .line 715
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_285

    .line 717
    :cond_c51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_c5a
    .catch Ljava/lang/RuntimeException; {:try_start_c2c .. :try_end_c5a} :catch_c0f

    goto/16 :goto_285

    .line 753
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .end local v99    # "watchdog":Lcom/android/server/Watchdog;
    .end local v105    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v59    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v67    # "location":Lcom/android/server/LocationManagerService;
    .restart local v69    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v85, "notification":Landroid/app/INotificationManager;
    .restart local v91    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_c5c
    move-exception v56

    .line 754
    .local v56, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2fb

    .line 761
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_c69
    move-exception v56

    .line 762
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_304

    .line 773
    .end local v56    # "e":Ljava/lang/Throwable;
    :cond_c76
    :try_start_c76
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 775
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 774
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_c8a
    .catch Ljava/lang/Throwable; {:try_start_c76 .. :try_end_c8a} :catch_c8d

    move-result-object v76

    .local v76, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_31d

    .line 776
    .local v76, "mountService":Landroid/os/storage/IMountService;
    :catch_c8d
    move-exception v56

    .line 777
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31d

    .line 790
    .end local v56    # "e":Ljava/lang/Throwable;
    .end local v76    # "mountService":Landroid/os/storage/IMountService;
    :catch_c9a
    move-exception v56

    .line 791
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33e

    .line 799
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_ca7
    move-exception v56

    .line 800
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing fstrim"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_356

    .line 811
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_cb4
    move-exception v56

    .line 812
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_380

    .line 832
    .end local v56    # "e":Ljava/lang/Throwable;
    .end local v69    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_cc1
    move-exception v56

    .line 833
    .end local v91    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_cc2
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3cc

    .line 843
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_cce
    move-exception v56

    .line 844
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e5

    .line 854
    .end local v56    # "e":Ljava/lang/Throwable;
    .end local v77    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_cdb
    move-exception v56

    .line 855
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3ff

    .line 861
    .end local v56    # "e":Ljava/lang/Throwable;
    :cond_ce8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_409

    .line 869
    :catch_cf3
    move-exception v56

    .line 870
    .end local v80    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_cf4
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_422

    .line 878
    .end local v56    # "e":Ljava/lang/Throwable;
    .end local v82    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_d00
    move-exception v56

    .line 879
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43c

    .line 888
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_d0d
    move-exception v56

    .line 889
    .end local v78    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_d0e
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_461

    .line 896
    .end local v56    # "e":Ljava/lang/Throwable;
    :cond_d1a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47e

    .line 927
    .end local v103    # "wigigP2pService":Ljava/lang/Object;
    .end local v104    # "wigigService":Ljava/lang/Object;
    :catch_d25
    move-exception v56

    .line 928
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53a

    .line 944
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_d32
    move-exception v56

    .line 945
    .end local v28    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_d33
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_589

    .line 954
    .end local v56    # "e":Ljava/lang/Throwable;
    .end local v90    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_d3f
    move-exception v56

    .line 955
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a1

    .line 965
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_d4c
    move-exception v56

    .line 966
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5ba

    .line 981
    .end local v56    # "e":Ljava/lang/Throwable;
    :cond_d59
    const-string/jumbo v4, "WaitForAsecScan"

    const-wide/32 v106, 0x80000

    move-wide/from16 v0, v106

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 983
    :try_start_d64
    invoke-interface/range {v76 .. v76}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_d67
    .catch Landroid/os/RemoteException; {:try_start_d64 .. :try_end_d67} :catch_d6f

    .line 986
    :goto_d67
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_5d3

    .line 984
    :catch_d6f
    move-exception v63

    .local v63, "ignored":Landroid/os/RemoteException;
    goto :goto_d67

    .line 1001
    .end local v63    # "ignored":Landroid/os/RemoteException;
    .local v85, "notification":Landroid/app/INotificationManager;
    :catch_d71
    move-exception v56

    .line 1002
    .end local v67    # "location":Lcom/android/server/LocationManagerService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_d72
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_610

    .line 1010
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_d7e
    move-exception v56

    .line 1011
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_d7f
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_62d

    .line 1017
    .end local v56    # "e":Ljava/lang/Throwable;
    :cond_d8b
    const-string/jumbo v4, "StartSearchManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1019
    :try_start_d91
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_d9b
    .catch Ljava/lang/Throwable; {:try_start_d91 .. :try_end_d9b} :catch_da3

    .line 1023
    :goto_d9b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_637

    .line 1020
    :catch_da3
    move-exception v56

    .line 1021
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d9b

    .line 1030
    .end local v56    # "e":Ljava/lang/Throwable;
    :cond_daf
    const-string/jumbo v4, "StartWallpaperManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1032
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_655

    .line 1052
    :catch_dc7
    move-exception v56

    .line 1053
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_694

    .line 1078
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_dd4
    move-exception v56

    .line 1079
    .end local v87    # "serial":Lcom/android/server/SerialService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_dd5
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v56

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_701

    .line 1090
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_de2
    move-exception v56

    .line 1091
    .end local v61    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_de3
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v56

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_723

    .line 1131
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_df0
    move-exception v56

    .line 1132
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7e6

    .line 1145
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_dfd
    move-exception v56

    .line 1146
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7ff

    .line 1152
    .end local v56    # "e":Ljava/lang/Throwable;
    :cond_e0a
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1154
    :try_start_e10
    new-instance v84, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v84

    invoke-direct {v0, v6}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_e17
    .catch Ljava/lang/Throwable; {:try_start_e10 .. :try_end_e17} :catch_e29

    .line 1155
    .end local v83    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_e17
    const-string/jumbo v4, "network_time_update_service"

    move-object/from16 v0, v84

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e1f
    .catch Ljava/lang/Throwable; {:try_start_e17 .. :try_end_e1f} :catch_f66

    move-object/from16 v83, v84

    .line 1159
    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_e21
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_809

    .line 1156
    .restart local v83    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_e29
    move-exception v56

    .line 1157
    .end local v83    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_e2a
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e21

    .line 1166
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_e35
    move-exception v56

    .line 1167
    .end local v25    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_e36
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_820

    .line 1175
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_e42
    move-exception v56

    .line 1176
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_835

    .line 1183
    .end local v56    # "e":Ljava/lang/Throwable;
    :cond_e4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_83f

    .line 1192
    :cond_e5a
    const-string/jumbo v4, "StartAssetAtlasService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1194
    :try_start_e60
    new-instance v22, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_e67
    .catch Ljava/lang/Throwable; {:try_start_e60 .. :try_end_e67} :catch_e79

    .line 1195
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v22, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_e67
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e6f
    .catch Ljava/lang/Throwable; {:try_start_e67 .. :try_end_e6f} :catch_f5c

    move-object/from16 v21, v22

    .line 1199
    .end local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    :goto_e71
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_84e

    .line 1196
    .restart local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_e79
    move-exception v56

    .line 1197
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_e7a
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e71

    .line 1213
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_e85
    move-exception v56

    .line 1214
    .end local v59    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_e86
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v56

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_884

    .line 1247
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_e93
    move-exception v56

    .line 1248
    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v56    # "e":Ljava/lang/Throwable;
    :goto_e94
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_91e

    .line 1263
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_ea0
    move-exception v56

    .line 1264
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_94e

    .line 1275
    .end local v56    # "e":Ljava/lang/Throwable;
    .end local v85    # "notification":Landroid/app/INotificationManager;
    :cond_ead
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_96a

    .line 1308
    .restart local v86    # "safeMode":Z
    :cond_eb8
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_9f6

    .line 1327
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_ec1
    move-exception v54

    .line 1328
    .local v54, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v106, "Unable to start  "

    move-object/from16 v0, v106

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const-string/jumbo v4, "SystemServer"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a51

    .line 1342
    .end local v54    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_eea
    move-exception v56

    .line 1343
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a83

    .line 1351
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_ef7
    move-exception v56

    .line 1352
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a99

    .line 1378
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_f04
    move-exception v56

    .line 1379
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b21

    .line 1385
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_f11
    move-exception v56

    .line 1386
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b24

    .line 1414
    .end local v56    # "e":Ljava/lang/Throwable;
    .restart local v27    # "config":Landroid/content/res/Configuration;
    .restart local v74    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v93    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v98    # "w":Landroid/view/WindowManager;
    :catch_f1e
    move-exception v56

    .line 1415
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b86

    .line 1422
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_f2b
    move-exception v56

    .line 1423
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b9e

    .line 1431
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_f38
    move-exception v56

    .line 1432
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bbc

    .line 1439
    .end local v56    # "e":Ljava/lang/Throwable;
    :catch_f45
    move-exception v56

    .line 1440
    .restart local v56    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bc7

    .line 1247
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v56    # "e":Ljava/lang/Throwable;
    .end local v74    # "metrics":Landroid/util/DisplayMetrics;
    .end local v86    # "safeMode":Z
    .end local v93    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v98    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v85    # "notification":Landroid/app/INotificationManager;
    :catch_f52
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v71, v72

    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v71, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_e94

    .line 1213
    .end local v56    # "e":Ljava/lang/Throwable;
    .restart local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v71, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_f57
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v59, v60

    .end local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v59, "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_e86

    .line 1196
    .end local v56    # "e":Ljava/lang/Throwable;
    .restart local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v59, "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_f5c
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v21, v22

    .end local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_e7a

    .line 1166
    .end local v56    # "e":Ljava/lang/Throwable;
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v26    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_f61
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v25, v26

    .end local v26    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v25, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_e36

    .line 1156
    .end local v56    # "e":Ljava/lang/Throwable;
    .local v25, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_f66
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v83, v84

    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v83, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_e2a

    .line 1090
    .end local v56    # "e":Ljava/lang/Throwable;
    .restart local v62    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v83, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_f6b
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v61, v62

    .end local v62    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v61, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_de3

    .line 1078
    .end local v56    # "e":Ljava/lang/Throwable;
    .local v61, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v88    # "serial":Lcom/android/server/SerialService;
    :catch_f70
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v87, v88

    .end local v88    # "serial":Lcom/android/server/SerialService;
    .local v87, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_dd5

    .line 1010
    .end local v56    # "e":Ljava/lang/Throwable;
    .restart local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v87, "serial":Lcom/android/server/SerialService;
    :catch_f75
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_d7f

    .line 1001
    .end local v56    # "e":Ljava/lang/Throwable;
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v68    # "location":Lcom/android/server/LocationManagerService;
    :catch_f7a
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v67, v68

    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .local v67, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_d72

    .line 944
    .end local v56    # "e":Ljava/lang/Throwable;
    .restart local v29    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v67, "location":Lcom/android/server/LocationManagerService;
    .local v85, "notification":Landroid/app/INotificationManager;
    .restart local v90    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_f7f
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v28, v29

    .end local v29    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v28, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_d33

    .line 888
    .end local v56    # "e":Ljava/lang/Throwable;
    .local v28, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v103    # "wigigP2pService":Ljava/lang/Object;
    .restart local v104    # "wigigService":Ljava/lang/Object;
    :catch_f84
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v78, v79

    .end local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v78, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_d0e

    .line 869
    .end local v56    # "e":Ljava/lang/Throwable;
    .local v78, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v82    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_f89
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v80, v81

    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v80, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_cf4

    .line 832
    .end local v56    # "e":Ljava/lang/Throwable;
    .restart local v77    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v80, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_f8e
    move-exception v56

    .restart local v56    # "e":Ljava/lang/Throwable;
    move-object/from16 v91, v92

    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v91, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_cc2

    .line 731
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v56    # "e":Ljava/lang/Throwable;
    .end local v59    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v67    # "location":Lcom/android/server/LocationManagerService;
    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v85    # "notification":Landroid/app/INotificationManager;
    .end local v91    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v76    # "mountService":Landroid/os/storage/IMountService;
    .local v94, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    .local v105, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_f93
    move-exception v55

    .restart local v55    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_c16

    .end local v55    # "e":Ljava/lang/RuntimeException;
    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_f96
    move-exception v55

    .restart local v55    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v94, v95

    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v94, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_c16

    .end local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v55    # "e":Ljava/lang/RuntimeException;
    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    :catch_f9b
    move-exception v55

    .restart local v55    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v94, v95

    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v96, v97

    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .local v96, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_c16

    .end local v55    # "e":Ljava/lang/RuntimeException;
    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    :catch_fa2
    move-exception v55

    .restart local v55    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v31, v32

    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v31, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v94, v95

    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v96, v97

    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_c16
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1601
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1602
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1603
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1602
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1604
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1606
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1600
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1610
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1611
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    return-void
.end method

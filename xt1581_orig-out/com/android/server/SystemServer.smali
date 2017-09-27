.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x103013f

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

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
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
    .registers 2

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 218
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .prologue
    .line 396
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 397
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 398
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 395
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 215
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 214
    return-void
.end method

.method private performPendingShutdown()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 356
    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    .line 355
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 357
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_7f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7f

    .line 358
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_6d

    const/4 v4, 0x1

    .line 361
    .local v4, "reboot":Z
    :goto_1e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_6f

    .line 362
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 372
    :goto_2c
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 373
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 375
    const/4 v1, 0x0

    .line 377
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_46
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_71

    move-result-object v1

    .line 382
    .end local v1    # "filename":Ljava/lang/String;
    :goto_4a
    if-eqz v1, :cond_7c

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 383
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7c

    .line 384
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void

    .line 358
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_6d
    const/4 v4, 0x0

    .restart local v4    # "reboot":Z
    goto :goto_1e

    .line 364
    :cond_6f
    const/4 v3, 0x0

    .local v3, "reason":Ljava/lang/String;
    goto :goto_2c

    .line 378
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_71
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 391
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_7c
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 354
    .end local v4    # "reboot":Z
    :cond_7f
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 350
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
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

    .line 349
    return-void
.end method

.method private run()V
    .registers 11

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v8, 0x80000

    .line 225
    :try_start_6
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_26

    .line 231
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 243
    :cond_26
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 244
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_5c
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 263
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 267
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 268
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 269
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    .line 274
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    .line 269
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 278
    :cond_9c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 282
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 286
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 290
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 294
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 297
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 300
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 304
    const/4 v0, -0x2

    .line 303
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 305
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 306
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 309
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 316
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 319
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 320
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_e8
    .catchall {:try_start_6 .. :try_end_e8} :catchall_11b

    .line 322
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 327
    :try_start_eb
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 329
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 330
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_fd} :catch_120
    .catchall {:try_start_eb .. :try_end_fd} :catchall_134

    .line 336
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 340
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 341
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_10f
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 346
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :catchall_11b
    move-exception v0

    .line 322
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 321
    throw v0

    .line 331
    :catch_120
    move-exception v6

    .line 332
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_121
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    throw v6
    :try_end_134
    .catchall {:try_start_121 .. :try_end_134} :catchall_134

    .line 335
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_134
    move-exception v0

    .line 336
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 335
    throw v0
.end method

.method private startBootstrapServices()V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/32 v8, 0x80000

    .line 412
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 415
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 416
    const-class v7, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 415
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 417
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 418
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 424
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 428
    const-string/jumbo v4, "InitPowerManagement"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 430
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 433
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/lights/LightsService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 436
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/motorola/server/display/PanelsService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 440
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 443
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 446
    const-string/jumbo v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 448
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v7, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 456
    :cond_81
    :goto_81
    const-string/jumbo v4, "StartPackageManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 457
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 458
    iget v4, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v4, :cond_f9

    move v4, v5

    :goto_8e
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 457
    invoke-static {v7, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 459
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 460
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 461
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 466
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_c6

    .line 467
    const-string/jumbo v4, "config.disable_otadexopt"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 469
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_c6

    .line 470
    const-string/jumbo v4, "StartOtaDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 472
    :try_start_bc
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v5}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_c3} :catch_fb
    .catchall {:try_start_bc .. :try_end_c3} :catchall_106

    .line 476
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 481
    .end local v1    # "disableOtaDexopt":Z
    :cond_c6
    :goto_c6
    const-string/jumbo v4, "StartUserManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 482
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 483
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 486
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 489
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 493
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 408
    return-void

    .line 450
    :cond_e4
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 451
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v7, "Device encrypted - only parsing core apps"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_81

    :cond_f9
    move v4, v6

    .line 458
    goto :goto_8e

    .line 473
    .restart local v1    # "disableOtaDexopt":Z
    :catch_fb
    move-exception v2

    .line 474
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_fc
    const-string/jumbo v4, "starting OtaDexOptService"

    invoke-direct {p0, v4, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_102
    .catchall {:try_start_fc .. :try_end_102} :catchall_106

    .line 476
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_c6

    .line 475
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_106
    move-exception v4

    .line 476
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 475
    throw v4
.end method

.method private startCoreServices()V
    .registers 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 504
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 505
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 506
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 505
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 509
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 499
    return-void
.end method

.method private startOtherServices()V
    .registers 90

    .prologue
    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 518
    .local v3, "context":Landroid/content/Context;
    const/16 v84, 0x0

    .line 519
    .local v84, "vibrator":Lcom/android/server/VibratorService;
    const/16 v68, 0x0

    .line 520
    .local v68, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 521
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 522
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v69, 0x0

    .line 523
    .local v69, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v31, 0x0

    .line 524
    .local v31, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v70, 0x0

    .line 525
    .local v70, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v78, 0x0

    .line 526
    .local v78, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v88, 0x0

    .line 527
    .local v88, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v76, 0x0

    .line 528
    .local v76, "serial":Lcom/android/server/SerialService;
    const/16 v72, 0x0

    .line 529
    .local v72, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v28, 0x0

    .line 530
    .local v28, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v58, 0x0

    .line 531
    .local v58, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v82, 0x0

    .line 532
    .local v82, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v33, 0x0

    .line 533
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v24, 0x0

    .line 534
    .local v24, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v55, 0x0

    .line 536
    .local v55, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 537
    .local v48, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 538
    .local v38, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 539
    .local v39, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 540
    .local v49, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 541
    .local v43, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 542
    .local v41, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 543
    .local v42, "disableNetworkTime":Z
    const-string/jumbo v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 544
    .local v37, "disableAtlas":Z
    const-string/jumbo v4, "config.disable_rtt"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    .line 545
    .local v44, "disableRtt":Z
    const-string/jumbo v4, "config.disable_mediaproj"

    .line 546
    const/4 v5, 0x0

    .line 545
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 547
    .local v40, "disableMediaProjection":Z
    const-string/jumbo v4, "config.disable_serial"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 548
    .local v47, "disableSerial":Z
    const-string/jumbo v4, "config.disable_searchmanager"

    .line 549
    const/4 v5, 0x0

    .line 548
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 550
    .local v46, "disableSearchManager":Z
    const-string/jumbo v4, "config.disable_trustmanager"

    .line 551
    const/4 v5, 0x0

    .line 550
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 552
    .local v51, "disableTrustManager":Z
    const-string/jumbo v4, "config.disable_textservices"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 553
    .local v50, "disableTextServices":Z
    const-string/jumbo v4, "config.disable_samplingprof"

    .line 554
    const/4 v5, 0x0

    .line 553
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 555
    .local v45, "disableSamplingProfiler":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    .line 558
    .local v60, "isEmulator":Z
    :try_start_aa
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 561
    const-string/jumbo v4, "StartSchedulingPolicyService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 562
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 563
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 567
    const-string/jumbo v4, "StartTelephonyRegistry"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 568
    new-instance v83, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v83

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_e3
    .catch Ljava/lang/RuntimeException; {:try_start_aa .. :try_end_e3} :catch_cf7

    .line 569
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v83, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_e3
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 570
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 572
    const-string/jumbo v4, "StartEntropyMixer"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 573
    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 574
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 576
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 578
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 582
    const-string/jumbo v4, "StartAccountManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 584
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 586
    const-string/jumbo v4, "StartContentService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 588
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 590
    const-string/jumbo v4, "InstallSystemProviders"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 592
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 594
    const-string/jumbo v4, "StartVibratorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 595
    new-instance v85, Lcom/android/server/VibratorService;

    move-object/from16 v0, v85

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_16c
    .catch Ljava/lang/RuntimeException; {:try_start_e3 .. :try_end_16c} :catch_cfa

    .line 596
    .local v85, "vibrator":Lcom/android/server/VibratorService;
    :try_start_16c
    const-string/jumbo v4, "vibrator"

    .end local v84    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v85

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 597
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 599
    const-string/jumbo v4, "StartConsumerIrService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 600
    new-instance v34, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_187
    .catch Ljava/lang/RuntimeException; {:try_start_16c .. :try_end_187} :catch_cff

    .line 601
    .local v34, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_187
    const-string/jumbo v4, "consumer_ir"

    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 602
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 604
    const-string/jumbo v4, "StartAlarmManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 606
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 608
    const-string/jumbo v4, "InitWatchdog"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 609
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v87

    .line 610
    .local v87, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v87

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 611
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 613
    const-string/jumbo v4, "StartInputManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 614
    new-instance v59, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v59

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d0
    .catch Ljava/lang/RuntimeException; {:try_start_187 .. :try_end_1d0} :catch_d06

    .line 615
    .local v59, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v4, 0x80000

    :try_start_1d3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 617
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9c5

    const/4 v4, 0x1

    move v5, v4

    .line 620
    :goto_1e5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_9c9

    const/4 v4, 0x0

    :goto_1ec
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 618
    move-object/from16 v0, v59

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v88

    .line 621
    .local v88, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 622
    const-string/jumbo v4, "input"

    move-object/from16 v0, v59

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 623
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 625
    const-string/jumbo v4, "StartVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 627
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v88

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 631
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 632
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/input/InputManagerService;->start()V

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 640
    if-eqz v60, :cond_9cc

    .line 641
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_248
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 655
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 657
    const-string/jumbo v4, "PinnerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 659
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_272
    .catch Ljava/lang/RuntimeException; {:try_start_1d3 .. :try_end_272} :catch_9de

    move-object/from16 v33, v34

    .end local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v82, v83

    .end local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v82, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v58, v59

    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v58, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v84, v85

    .line 665
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v85    # "vibrator":Lcom/android/server/VibratorService;
    .end local v87    # "watchdog":Lcom/android/server/Watchdog;
    .end local v88    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_27a
    const/16 v79, 0x0

    .line 666
    .local v79, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v74, 0x0

    .line 667
    .local v74, "notification":Landroid/app/INotificationManager;
    const/16 v61, 0x0

    .line 668
    .local v61, "location":Lcom/android/server/LocationManagerService;
    const/16 v35, 0x0

    .line 669
    .local v35, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v63, 0x0

    .line 670
    .local v63, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v25, 0x0

    .line 671
    .local v25, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v64, 0x0

    .line 674
    .local v64, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2af

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 677
    const-string/jumbo v4, "StartAccessibilityManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 679
    :try_start_29e
    const-string/jumbo v4, "accessibility"

    .line 680
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 679
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a9
    .catch Ljava/lang/Throwable; {:try_start_29e .. :try_end_2a9} :catch_a2d

    .line 684
    :goto_2a9
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 688
    :cond_2af
    :try_start_2af
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2b2
    .catch Ljava/lang/Throwable; {:try_start_2af .. :try_end_2b2} :catch_a3a

    .line 693
    :goto_2b2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2cb

    .line 694
    if-nez v48, :cond_2cb

    .line 695
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a47

    .line 712
    .end local v68    # "mountService":Landroid/os/storage/IMountService;
    :cond_2cb
    :goto_2cb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 714
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_2f0

    .line 715
    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 717
    :try_start_2e3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_2ea
    .catch Ljava/lang/Throwable; {:try_start_2e3 .. :try_end_2ea} :catch_a6b

    .line 721
    :goto_2ea
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 724
    :cond_2f0
    const-string/jumbo v4, "PerformFstrimIfNeeded"

    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 726
    :try_start_2f9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_300
    .catch Ljava/lang/Throwable; {:try_start_2f9 .. :try_end_300} :catch_a78

    .line 730
    :goto_300
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 733
    :try_start_306
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 734
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 735
    const v8, 0x10403b0

    .line 734
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 736
    const/4 v8, 0x0

    .line 733
    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_319
    .catch Landroid/os/RemoteException; {:try_start_306 .. :try_end_319} :catch_cf4

    .line 740
    :goto_319
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_d13

    .line 741
    if-nez v43, :cond_36e

    .line 742
    const-string/jumbo v4, "StartLockSettingsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 744
    :try_start_328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 746
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 745
    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_33c
    .catch Ljava/lang/Throwable; {:try_start_328 .. :try_end_33c} :catch_a85

    move-result-object v63

    .line 750
    .end local v63    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_33d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 752
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35c

    .line 753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 756
    :cond_35c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 763
    :cond_36e
    if-nez v49, :cond_38f

    .line 764
    const-string/jumbo v4, "StartStatusBarManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 766
    :try_start_376
    new-instance v80, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v80

    move-object/from16 v1, v88

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_37f
    .catch Ljava/lang/Throwable; {:try_start_376 .. :try_end_37f} :catch_a92

    .line 767
    .end local v79    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v80, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_37f
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_387
    .catch Ljava/lang/Throwable; {:try_start_37f .. :try_end_387} :catch_cef

    move-object/from16 v79, v80

    .line 771
    .end local v80    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_389
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 774
    :cond_38f
    if-nez v43, :cond_3a8

    .line 775
    const-string/jumbo v4, "StartClipboardService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 777
    :try_start_397
    const-string/jumbo v4, "clipboard"

    .line 778
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 777
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a2
    .catch Ljava/lang/Throwable; {:try_start_397 .. :try_end_3a2} :catch_a9f

    .line 782
    :goto_3a2
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 785
    :cond_3a8
    if-nez v41, :cond_3c0

    .line 786
    const-string/jumbo v4, "StartNetworkManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 788
    :try_start_3b0
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 789
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3ba
    .catch Ljava/lang/Throwable; {:try_start_3b0 .. :try_end_3ba} :catch_aac

    .line 793
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_3ba
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 796
    :cond_3c0
    if-nez v43, :cond_3c4

    if-eqz v50, :cond_ab9

    .line 800
    :cond_3c4
    :goto_3c4
    if-nez v41, :cond_d0f

    .line 801
    const-string/jumbo v4, "StartNetworkScoreService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 803
    :try_start_3cc
    new-instance v71, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v71

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_3d3
    .catch Ljava/lang/Throwable; {:try_start_3cc .. :try_end_3d3} :catch_ac4

    .line 804
    .end local v70    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v71, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_3d3
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3db
    .catch Ljava/lang/Throwable; {:try_start_3d3 .. :try_end_3db} :catch_cea

    move-object/from16 v70, v71

    .line 808
    .end local v71    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_3dd
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 810
    const-string/jumbo v4, "StartNetworkStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 812
    :try_start_3e9
    invoke-static {v3, v7}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v6

    .line 813
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v4, "netstats"

    invoke-static {v4, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f3
    .catch Ljava/lang/Throwable; {:try_start_3e9 .. :try_end_3f3} :catch_ad1

    .line 817
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_3f3
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 819
    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 821
    :try_start_3ff
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 823
    const-string/jumbo v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    .line 821
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_411
    .catch Ljava/lang/Throwable; {:try_start_3ff .. :try_end_411} :catch_ade

    .line 825
    .end local v69    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_411
    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_417
    .catch Ljava/lang/Throwable; {:try_start_411 .. :try_end_417} :catch_ce7

    .line 829
    :goto_417
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 831
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.wifi.nan"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_aed

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 836
    :goto_434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 839
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    .line 838
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 841
    if-nez v44, :cond_45e

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 845
    :cond_45e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_478

    .line 846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 845
    if-eqz v4, :cond_482

    .line 847
    :cond_478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 850
    :cond_482
    const-string/jumbo v4, "StartConnectivityService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 852
    :try_start_488
    new-instance v32, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v32

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_48f
    .catch Ljava/lang/Throwable; {:try_start_488 .. :try_end_48f} :catch_af8

    .line 854
    .end local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v32, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_48f
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 855
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 856
    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_4a1
    .catch Ljava/lang/Throwable; {:try_start_48f .. :try_end_4a1} :catch_ce2

    move-object/from16 v31, v32

    .line 860
    .end local v32    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_4a3
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 862
    const-string/jumbo v4, "StartNsdService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 864
    :try_start_4af
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v78

    .line 866
    .local v78, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 865
    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4bb
    .catch Ljava/lang/Throwable; {:try_start_4af .. :try_end_4bb} :catch_b05

    .line 870
    .end local v78    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_4bb
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 873
    :goto_4c1
    if-nez v43, :cond_4da

    .line 874
    const-string/jumbo v4, "StartUpdateLockService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 876
    :try_start_4c9
    const-string/jumbo v4, "updatelock"

    .line 877
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 876
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d4
    .catch Ljava/lang/Throwable; {:try_start_4c9 .. :try_end_4d4} :catch_b12

    .line 881
    :goto_4d4
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 884
    :cond_4da
    if-nez v43, :cond_4e5

    .line 885
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 893
    :cond_4e5
    if-eqz v68, :cond_4ed

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_b1f

    .line 902
    :cond_4ed
    :goto_4ed
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 904
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 903
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v74

    .line 905
    .local v74, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v74

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 909
    if-nez v39, :cond_54b

    .line 910
    const-string/jumbo v4, "StartLocationManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 912
    :try_start_517
    new-instance v62, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v62

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_51e
    .catch Ljava/lang/Throwable; {:try_start_517 .. :try_end_51e} :catch_b35

    .line 913
    .end local v61    # "location":Lcom/android/server/LocationManagerService;
    .local v62, "location":Lcom/android/server/LocationManagerService;
    :try_start_51e
    const-string/jumbo v4, "location"

    move-object/from16 v0, v62

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_526
    .catch Ljava/lang/Throwable; {:try_start_51e .. :try_end_526} :catch_cdd

    move-object/from16 v61, v62

    .line 917
    .end local v62    # "location":Lcom/android/server/LocationManagerService;
    :goto_528
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 919
    const-string/jumbo v4, "StartCountryDetectorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 921
    :try_start_534
    new-instance v36, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_53b
    .catch Ljava/lang/Throwable; {:try_start_534 .. :try_end_53b} :catch_b42

    .line 922
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v36, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_53b
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_543
    .catch Ljava/lang/Throwable; {:try_start_53b .. :try_end_543} :catch_cd8

    move-object/from16 v35, v36

    .line 926
    .end local v36    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_545
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 929
    :cond_54b
    if-nez v43, :cond_54f

    if-eqz v46, :cond_b4f

    .line 939
    :cond_54f
    :goto_54f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 945
    :try_start_558
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Starting Checkin Mot Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_561
    .catch Ljava/lang/Throwable; {:try_start_558 .. :try_end_561} :catch_b73

    .line 954
    :goto_561
    if-nez v43, :cond_586

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 955
    const v5, 0x112004d

    .line 954
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_586

    .line 956
    const-string/jumbo v4, "StartWallpaperManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 958
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 961
    :cond_586
    const-string/jumbo v4, "StartAudioService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 963
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 965
    if-nez v43, :cond_5bd

    .line 966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 968
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5bd

    .line 969
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 973
    :cond_5bd
    const-string/jumbo v4, "StartWiredAccessoryManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 977
    :try_start_5c3
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v58

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 976
    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_5cf
    .catch Ljava/lang/Throwable; {:try_start_5c3 .. :try_end_5cf} :catch_b80

    .line 981
    :goto_5cf
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 983
    if-nez v43, :cond_660

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5ee

    .line 986
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 989
    :cond_5ee
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_608

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 991
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 990
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 989
    if-eqz v4, :cond_621

    .line 993
    :cond_608
    const-string/jumbo v4, "StartUsbService"

    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 995
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 998
    :cond_621
    if-nez v47, :cond_640

    .line 999
    const-string/jumbo v4, "StartSerialService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1002
    :try_start_629
    new-instance v77, Lcom/android/server/SerialService;

    move-object/from16 v0, v77

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_630
    .catch Ljava/lang/Throwable; {:try_start_629 .. :try_end_630} :catch_b8d

    .line 1003
    .end local v76    # "serial":Lcom/android/server/SerialService;
    .local v77, "serial":Lcom/android/server/SerialService;
    :try_start_630
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_638
    .catch Ljava/lang/Throwable; {:try_start_630 .. :try_end_638} :catch_cd3

    move-object/from16 v76, v77

    .line 1007
    .end local v77    # "serial":Lcom/android/server/SerialService;
    :goto_63a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1011
    :cond_640
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    .line 1010
    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1013
    :try_start_649
    new-instance v56, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v56

    invoke-direct {v0, v3}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_650
    .catch Ljava/lang/Throwable; {:try_start_649 .. :try_end_650} :catch_b9b

    .line 1014
    .end local v55    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v56, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_650
    const-string/jumbo v4, "hardware_properties"

    move-object/from16 v0, v56

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_658
    .catch Ljava/lang/Throwable; {:try_start_650 .. :try_end_658} :catch_cce

    move-object/from16 v55, v56

    .line 1019
    .end local v56    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_65a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1022
    :cond_660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1024
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1028
    if-nez v43, :cond_6fd

    .line 1029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_694

    .line 1030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1033
    :cond_694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6ae

    .line 1034
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1033
    if-eqz v4, :cond_6b8

    .line 1035
    :cond_6ae
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1038
    :cond_6b8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6cf

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1042
    :cond_6cf
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_6eb

    .line 1043
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1046
    :cond_6eb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1050
    :cond_6fd
    const-string/jumbo v4, "StartDiskStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1052
    :try_start_703
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70e
    .catch Ljava/lang/Throwable; {:try_start_703 .. :try_end_70e} :catch_ba9

    .line 1056
    :goto_70e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1058
    if-nez v45, :cond_72d

    .line 1059
    const-string/jumbo v4, "StartSamplingProfilerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1065
    :try_start_71c
    const-string/jumbo v4, "samplingprofiler"

    .line 1066
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1065
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_727
    .catch Ljava/lang/Throwable; {:try_start_71c .. :try_end_727} :catch_bb6

    .line 1070
    :goto_727
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1073
    :cond_72d
    if-nez v41, :cond_731

    if-eqz v42, :cond_bc3

    .line 1084
    .end local v72    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_731
    :goto_731
    const-string/jumbo v4, "StartCommonTimeManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1086
    :try_start_737
    new-instance v29, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_73e
    .catch Ljava/lang/Throwable; {:try_start_737 .. :try_end_73e} :catch_bee

    .line 1087
    .end local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v29, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_73e
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_746
    .catch Ljava/lang/Throwable; {:try_start_73e .. :try_end_746} :catch_cc4

    move-object/from16 v28, v29

    .line 1091
    .end local v29    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_748
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1093
    if-nez v41, :cond_763

    .line 1094
    const-string/jumbo v4, "CertBlacklister"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1096
    :try_start_756
    new-instance v27, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_75d
    .catch Ljava/lang/Throwable; {:try_start_756 .. :try_end_75d} :catch_bfb

    .line 1100
    :goto_75d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1103
    :cond_763
    if-nez v43, :cond_76e

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1108
    :cond_76e
    if-nez v43, :cond_772

    if-eqz v37, :cond_c08

    .line 1119
    .end local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_772
    :goto_772
    if-nez v43, :cond_77f

    .line 1120
    const-string/jumbo v4, "graphicsstats"

    .line 1121
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 1120
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1124
    :cond_77f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_796

    .line 1125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1128
    :cond_796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7be

    .line 1133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1136
    :cond_7be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d4

    .line 1137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1140
    :cond_7d4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.picture_in_picture"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7ea

    .line 1141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1144
    :cond_7ea
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.leanback"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_800

    .line 1145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1148
    :cond_800
    if-nez v43, :cond_84f

    .line 1149
    const-string/jumbo v4, "StartMediaRouterService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1151
    :try_start_808
    new-instance v65, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v65

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_80f
    .catch Ljava/lang/Throwable; {:try_start_808 .. :try_end_80f} :catch_c33

    .line 1152
    .end local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v65, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_80f
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v65

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_817
    .catch Ljava/lang/Throwable; {:try_start_80f .. :try_end_817} :catch_cba

    move-object/from16 v64, v65

    .line 1156
    .end local v65    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_819
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1158
    if-nez v51, :cond_82a

    .line 1159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1162
    :cond_82a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_840

    .line 1163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1166
    :cond_840
    const-string/jumbo v4, "StartBackgroundDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1168
    :try_start_846
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_849
    .catch Ljava/lang/Throwable; {:try_start_846 .. :try_end_849} :catch_c40

    .line 1172
    :goto_849
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1175
    :cond_84f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1180
    if-nez v43, :cond_885

    .line 1181
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1182
    const v5, 0x10405f9

    .line 1181
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c4d

    .line 1183
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1184
    const v5, 0x10405fa

    .line 1183
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c4d

    .line 1191
    .end local v74    # "notification":Landroid/app/INotificationManager;
    :cond_885
    :goto_885
    if-nez v43, :cond_889

    if-eqz v40, :cond_c58

    .line 1195
    :cond_889
    :goto_889
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a0

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.bluetooth.WearBluetoothService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1201
    :cond_8a0
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v75

    .line 1202
    .local v75, "safeMode":Z
    if-eqz v75, :cond_c63

    .line 1203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1205
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1212
    :goto_8b4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v24

    .end local v24    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v24, Lcom/android/server/MmsServiceBroker;

    .line 1216
    .local v24, "mmsService":Lcom/android/server/MmsServiceBroker;
    const-string/jumbo v4, "MakeVibratorServiceReady"

    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1218
    :try_start_8c9
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_8cc
    .catch Ljava/lang/Throwable; {:try_start_8c9 .. :try_end_8cc} :catch_c6c

    .line 1222
    :goto_8cc
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1224
    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1225
    if-eqz v63, :cond_8e0

    .line 1227
    :try_start_8dd
    invoke-interface/range {v63 .. v63}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_8e0
    .catch Ljava/lang/Throwable; {:try_start_8dd .. :try_end_8e0} :catch_c79

    .line 1232
    :cond_8e0
    :goto_8e0
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1239
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1241
    :try_start_901
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_904
    .catch Ljava/lang/Throwable; {:try_start_901 .. :try_end_904} :catch_c86

    .line 1245
    :goto_904
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1247
    if-eqz v75, :cond_913

    .line 1248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1254
    :cond_913
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v30

    .line 1255
    .local v30, "config":Landroid/content/res/Configuration;
    new-instance v66, Landroid/util/DisplayMetrics;

    invoke-direct/range {v66 .. v66}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1256
    .local v66, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/view/WindowManager;

    .line 1257
    .local v86, "w":Landroid/view/WindowManager;
    invoke-interface/range {v86 .. v86}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1258
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, v66

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1261
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v81

    .line 1262
    .local v81, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v81 .. v81}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_946

    .line 1263
    invoke-virtual/range {v81 .. v81}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1266
    :cond_946
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1269
    :try_start_94f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 1270
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_964
    .catch Ljava/lang/Throwable; {:try_start_94f .. :try_end_964} :catch_c93

    .line 1274
    :goto_964
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1276
    const-string/jumbo v4, "MakePackageManagerServiceReady"

    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1278
    :try_start_973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_97a
    .catch Ljava/lang/Throwable; {:try_start_973 .. :try_end_97a} :catch_ca0

    .line 1282
    :goto_97a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1284
    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1287
    :try_start_989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v75

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_996
    .catch Ljava/lang/Throwable; {:try_start_989 .. :try_end_996} :catch_cad

    .line 1291
    :goto_996
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1294
    move-object v12, v7

    .line 1295
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .line 1296
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .line 1297
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v31

    .line 1298
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v70

    .line 1299
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v16, v61

    .line 1300
    .local v16, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v17, v35

    .line 1301
    .local v17, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v18, v72

    .line 1302
    .local v18, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v19, v28

    .line 1303
    .local v19, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v20, v25

    .line 1304
    .local v20, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v21, v58

    .line 1305
    .local v21, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v22, v82

    .line 1306
    .local v22, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v23, v64

    .line 1307
    .local v23, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v67, v24

    .line 1314
    .local v67, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v24}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 516
    return-void

    .line 619
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v17    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v18    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v19    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v20    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v21    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v22    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v23    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v66    # "metrics":Landroid/util/DisplayMetrics;
    .end local v67    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v75    # "safeMode":Z
    .end local v81    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v86    # "w":Landroid/view/WindowManager;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v24, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v55    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "mountService":Landroid/os/storage/IMountService;
    .restart local v69    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v70    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v72    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v76    # "serial":Lcom/android/server/SerialService;
    .local v78, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v85    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v87    # "watchdog":Lcom/android/server/Watchdog;
    .local v88, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_9c5
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_1e5

    .line 620
    :cond_9c9
    const/4 v4, 0x1

    goto/16 :goto_1ec

    .line 642
    .local v88, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_9cc
    :try_start_9cc
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9fd

    .line 643
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9dc
    .catch Ljava/lang/RuntimeException; {:try_start_9cc .. :try_end_9dc} :catch_9de

    goto/16 :goto_248

    .line 660
    .end local v88    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_9de
    move-exception v53

    .local v53, "e":Ljava/lang/RuntimeException;
    move-object/from16 v33, v34

    .end local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v82, v83

    .end local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v58, v59

    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v84, v85

    .line 661
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v85    # "vibrator":Lcom/android/server/VibratorService;
    .end local v87    # "watchdog":Lcom/android/server/Watchdog;
    :goto_9e7
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v53

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27a

    .line 644
    .end local v53    # "e":Ljava/lang/RuntimeException;
    .restart local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v85    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v87    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v88    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_9fd
    :try_start_9fd
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 645
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 644
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a15

    .line 646
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_248

    .line 647
    :cond_a15
    if-eqz v38, :cond_a22

    .line 648
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_248

    .line 650
    :cond_a22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_a2b
    .catch Ljava/lang/RuntimeException; {:try_start_9fd .. :try_end_a2b} :catch_9de

    goto/16 :goto_248

    .line 681
    .end local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v85    # "vibrator":Lcom/android/server/VibratorService;
    .end local v87    # "watchdog":Lcom/android/server/Watchdog;
    .end local v88    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v61    # "location":Lcom/android/server/LocationManagerService;
    .restart local v63    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v74, "notification":Landroid/app/INotificationManager;
    .restart local v79    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_a2d
    move-exception v54

    .line 682
    .local v54, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a9

    .line 689
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_a3a
    move-exception v54

    .line 690
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b2

    .line 701
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_a47
    :try_start_a47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 703
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 702
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_a5b
    .catch Ljava/lang/Throwable; {:try_start_a47 .. :try_end_a5b} :catch_a5e

    move-result-object v68

    .local v68, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_2cb

    .line 704
    .local v68, "mountService":Landroid/os/storage/IMountService;
    :catch_a5e
    move-exception v54

    .line 705
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2cb

    .line 718
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v68    # "mountService":Landroid/os/storage/IMountService;
    :catch_a6b
    move-exception v54

    .line 719
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2ea

    .line 727
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_a78
    move-exception v54

    .line 728
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing fstrim"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_300

    .line 747
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_a85
    move-exception v54

    .line 748
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33d

    .line 768
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v63    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_a92
    move-exception v54

    .line 769
    .end local v79    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_a93
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_389

    .line 779
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_a9f
    move-exception v54

    .line 780
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a2

    .line 790
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_aac
    move-exception v54

    .line 791
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3ba

    .line 797
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_ab9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_3c4

    .line 805
    :catch_ac4
    move-exception v54

    .line 806
    .end local v70    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_ac5
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3dd

    .line 814
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_ad1
    move-exception v54

    .line 815
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f3

    .line 826
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_ade
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v69

    .line 827
    .end local v69    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_ae1
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_417

    .line 834
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_aed
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_434

    .line 857
    :catch_af8
    move-exception v54

    .line 858
    .end local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_af9
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a3

    .line 867
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v78    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_b05
    move-exception v54

    .line 868
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4bb

    .line 878
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_b12
    move-exception v54

    .line 879
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d4

    .line 894
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_b1f
    const-string/jumbo v4, "WaitForAsecScan"

    const-wide/32 v8, 0x80000

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 896
    :try_start_b28
    invoke-interface/range {v68 .. v68}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_b2b
    .catch Landroid/os/RemoteException; {:try_start_b28 .. :try_end_b2b} :catch_b33

    .line 899
    :goto_b2b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4ed

    .line 897
    :catch_b33
    move-exception v57

    .local v57, "ignored":Landroid/os/RemoteException;
    goto :goto_b2b

    .line 914
    .end local v57    # "ignored":Landroid/os/RemoteException;
    .local v74, "notification":Landroid/app/INotificationManager;
    :catch_b35
    move-exception v54

    .line 915
    .end local v61    # "location":Lcom/android/server/LocationManagerService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_b36
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_528

    .line 923
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_b42
    move-exception v54

    .line 924
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_b43
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_545

    .line 930
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_b4f
    const-string/jumbo v4, "StartSearchManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 932
    :try_start_b55
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_b5f
    .catch Ljava/lang/Throwable; {:try_start_b55 .. :try_end_b5f} :catch_b67

    .line 936
    :goto_b5f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_54f

    .line 933
    :catch_b67
    move-exception v54

    .line 934
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b5f

    .line 949
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_b73
    move-exception v54

    .line 950
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Failure starting Checkin Mot Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_561

    .line 978
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_b80
    move-exception v54

    .line 979
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5cf

    .line 1004
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_b8d
    move-exception v54

    .line 1005
    .end local v76    # "serial":Lcom/android/server/SerialService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_b8e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_63a

    .line 1016
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_b9b
    move-exception v54

    .line 1017
    .end local v55    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_b9c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_65a

    .line 1053
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_ba9
    move-exception v54

    .line 1054
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_70e

    .line 1067
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_bb6
    move-exception v54

    .line 1068
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_727

    .line 1074
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_bc3
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1076
    :try_start_bc9
    new-instance v73, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v73

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_bd0
    .catch Ljava/lang/Throwable; {:try_start_bc9 .. :try_end_bd0} :catch_be2

    .line 1077
    .end local v72    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v73, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_bd0
    const-string/jumbo v4, "network_time_update_service"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_bd8
    .catch Ljava/lang/Throwable; {:try_start_bd0 .. :try_end_bd8} :catch_cc9

    move-object/from16 v72, v73

    .line 1081
    .end local v73    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_bda
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_731

    .line 1078
    .restart local v72    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_be2
    move-exception v54

    .line 1079
    .end local v72    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_be3
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_bda

    .line 1088
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_bee
    move-exception v54

    .line 1089
    .end local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_bef
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_748

    .line 1097
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_bfb
    move-exception v54

    .line 1098
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_75d

    .line 1109
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_c08
    const-string/jumbo v4, "StartAssetAtlasService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1111
    :try_start_c0e
    new-instance v26, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_c15
    .catch Ljava/lang/Throwable; {:try_start_c0e .. :try_end_c15} :catch_c27

    .line 1112
    .end local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v26, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_c15
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c1d
    .catch Ljava/lang/Throwable; {:try_start_c15 .. :try_end_c1d} :catch_cbf

    move-object/from16 v25, v26

    .line 1116
    .end local v26    # "atlas":Lcom/android/server/AssetAtlasService;
    :goto_c1f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_772

    .line 1113
    .restart local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_c27
    move-exception v54

    .line 1114
    .end local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_c28
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c1f

    .line 1153
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_c33
    move-exception v54

    .line 1154
    .end local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_c34
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_819

    .line 1169
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_c40
    move-exception v54

    .line 1170
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_849

    .line 1185
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_c4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/motorola/server/MotoPersDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_885

    .line 1192
    .end local v74    # "notification":Landroid/app/INotificationManager;
    :cond_c58
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_889

    .line 1208
    .restart local v75    # "safeMode":Z
    :cond_c63
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_8b4

    .line 1219
    .local v24, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_c6c
    move-exception v54

    .line 1220
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8cc

    .line 1228
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_c79
    move-exception v54

    .line 1229
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e0

    .line 1242
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_c86
    move-exception v54

    .line 1243
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_904

    .line 1271
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v30    # "config":Landroid/content/res/Configuration;
    .restart local v66    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v81    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v86    # "w":Landroid/view/WindowManager;
    :catch_c93
    move-exception v54

    .line 1272
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_964

    .line 1279
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_ca0
    move-exception v54

    .line 1280
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_97a

    .line 1288
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_cad
    move-exception v54

    .line 1289
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_996

    .line 1153
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v66    # "metrics":Landroid/util/DisplayMetrics;
    .end local v75    # "safeMode":Z
    .end local v81    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v86    # "w":Landroid/view/WindowManager;
    .local v24, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v65    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v74    # "notification":Landroid/app/INotificationManager;
    :catch_cba
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v64, v65

    .end local v65    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v64, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_c34

    .line 1113
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v26    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v64, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_cbf
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v25, v26

    .end local v26    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v25, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_c28

    .line 1088
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v25, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v29    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_cc4
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v28, v29

    .end local v29    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v28, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_bef

    .line 1078
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v28, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v73    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_cc9
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v72, v73

    .end local v73    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v72, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_be3

    .line 1016
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v56    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v72, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_cce
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v55, v56

    .end local v56    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v55, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_b9c

    .line 1004
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v55, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v77    # "serial":Lcom/android/server/SerialService;
    :catch_cd3
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v76, v77

    .end local v77    # "serial":Lcom/android/server/SerialService;
    .local v76, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_b8e

    .line 923
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v36    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v76, "serial":Lcom/android/server/SerialService;
    :catch_cd8
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v35, v36

    .end local v36    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v35, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_b43

    .line 914
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v35, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v62    # "location":Lcom/android/server/LocationManagerService;
    :catch_cdd
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v61, v62

    .end local v62    # "location":Lcom/android/server/LocationManagerService;
    .local v61, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_b36

    .line 857
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v32    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v61, "location":Lcom/android/server/LocationManagerService;
    .local v74, "notification":Landroid/app/INotificationManager;
    .restart local v78    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_ce2
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v31, v32

    .end local v32    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v31, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_af9

    .line 826
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v31, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_ce7
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    goto/16 :goto_ae1

    .line 805
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v69    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v71    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_cea
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v70, v71

    .end local v71    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v70, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_ac5

    .line 768
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v70, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v80    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_cef
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v79, v80

    .end local v80    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v79, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_a93

    .line 737
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v63    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v79, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_cf4
    move-exception v52

    .local v52, "e":Landroid/os/RemoteException;
    goto/16 :goto_319

    .line 660
    .end local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v52    # "e":Landroid/os/RemoteException;
    .end local v61    # "location":Lcom/android/server/LocationManagerService;
    .end local v63    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v74    # "notification":Landroid/app/INotificationManager;
    .end local v79    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v58, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "mountService":Landroid/os/storage/IMountService;
    .local v82, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v84    # "vibrator":Lcom/android/server/VibratorService;
    .local v88, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_cf7
    move-exception v53

    .restart local v53    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_9e7

    .end local v53    # "e":Ljava/lang/RuntimeException;
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_cfa
    move-exception v53

    .restart local v53    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v82, v83

    .end local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v82, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_9e7

    .end local v53    # "e":Ljava/lang/RuntimeException;
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v84    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v85    # "vibrator":Lcom/android/server/VibratorService;
    :catch_cff
    move-exception v53

    .restart local v53    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v82, v83

    .end local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v84, v85

    .end local v85    # "vibrator":Lcom/android/server/VibratorService;
    .local v84, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_9e7

    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v53    # "e":Ljava/lang/RuntimeException;
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v84    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v85    # "vibrator":Lcom/android/server/VibratorService;
    :catch_d06
    move-exception v53

    .restart local v53    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v33, v34

    .end local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v82, v83

    .end local v83    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v84, v85

    .end local v85    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v84    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_9e7

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v53    # "e":Ljava/lang/RuntimeException;
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v68    # "mountService":Landroid/os/storage/IMountService;
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v84    # "vibrator":Lcom/android/server/VibratorService;
    .end local v88    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v61    # "location":Lcom/android/server/LocationManagerService;
    .restart local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v74    # "notification":Landroid/app/INotificationManager;
    :cond_d0f
    move-object/from16 v2, v69

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_4c1

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v63    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v79    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_d13
    move-object/from16 v2, v69

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_885
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1450
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1451
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1452
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1451
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1453
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1455
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1449
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1459
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1460
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return-void
.end method

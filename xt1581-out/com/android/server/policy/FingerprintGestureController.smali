.class Lcom/android/server/policy/FingerprintGestureController;
.super Ljava/lang/Object;
.source "FingerprintGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/FingerprintGestureController$-void__init__android_content_Context_context_android_os_Handler_handler_com_android_server_policy_keyguard_KeyguardServiceDelegate_keyguardDelegate_com_android_server_policy_FingerprintGestureController$Callbacks_callbacks_LambdaImpl0;,
        Lcom/android/server/policy/FingerprintGestureController$-void__init__android_content_Context_context_android_os_Handler_handler_com_android_server_policy_keyguard_KeyguardServiceDelegate_keyguardDelegate_com_android_server_policy_FingerprintGestureController$Callbacks_callbacks_LambdaImpl1;,
        Lcom/android/server/policy/FingerprintGestureController$-void__init__android_content_Context_context_android_os_Handler_handler_com_android_server_policy_keyguard_KeyguardServiceDelegate_keyguardDelegate_com_android_server_policy_FingerprintGestureController$Callbacks_callbacks_LambdaImpl2;,
        Lcom/android/server/policy/FingerprintGestureController$1;,
        Lcom/android/server/policy/FingerprintGestureController$2;,
        Lcom/android/server/policy/FingerprintGestureController$Callbacks;,
        Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_ACTION:Z

.field private static final DEBUG_TS:Z

.field private static final FINGERPRINT_DTAP_ACTION_INDEX:I = 0x1

.field private static final FINGERPRINT_DTAP_ENABLED_INDEX:I = 0x0

.field private static final FINGERPRINT_HOLD_ACTION_INDEX:I = 0x3

.field private static final FINGERPRINT_LONG_PRESS_DURATION:I = 0x14d

.field private static final FINGERPRINT_NAV_ACTION_ASSIST:I = 0x7

.field private static final FINGERPRINT_NAV_ACTION_BACK:I = 0x0

.field private static final FINGERPRINT_NAV_ACTION_HOME:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_LOCK:I = 0x3

.field private static final FINGERPRINT_NAV_ACTION_NONE:I = 0xff

.field private static final FINGERPRINT_NAV_ACTION_NOTE:I = 0x4

.field private static final FINGERPRINT_NAV_ACTION_RECENTS:I = 0x2

.field private static final FINGERPRINT_NAV_ACTION_SETTINGS:I = 0x5

.field private static final FINGERPRINT_NAV_ACTION_TSB:I = 0x6

.field private static final FINGERPRINT_NAV_DTAP_FALSE:I = 0x0

.field private static final FINGERPRINT_NAV_DTAP_TRUE:I = 0x1

.field private static final FINGERPRINT_TAP_ACTION_INDEX:I = 0x2

.field private static final FINGERPRINT_XMINUS_ACTION_INDEX:I = 0x7

.field private static final FINGERPRINT_XPLUS_ACTION_INDEX:I = 0x6

.field private static final FINGERPRINT_YMINUS_ACTION_INDEX:I = 0x5

.field private static final FINGERPRINT_YPLUS_ACTION_INDEX:I = 0x4

.field private static final FPS_ONENAV_LONG_HOLD:I = -0x1

.field private static final LOCAL_DEBUG:Z = true

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "FingerprintController"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final FINGERPRINT_NAV_ACTIONMAP_DEFAULT:[I

.field private final FINGERPRINT_NAV_ACTIONMAP_LEGACY:[I

.field private mActionMap:[I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Lcom/android/server/policy/FingerprintGestureController$Callbacks;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayOffByFingerprint:Z

.field private mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mFingerprintDownTimeStamp:J

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mFingerprintRunnable:Ljava/lang/Runnable;

.field private mFingerprintUpTimeStamp:J

.field private mHandler:Landroid/os/Handler;

.field private mHasOneNavFeature:Z

.field private mHasVibrator:Z

.field private mKeyguardActive:Z

.field private mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mOneNavContentObserver:Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;

.field mOneNavEnabled:Z

.field private mOneNavFingerDownTs:J

.field private mOneNavFingerUpTs:J

.field private mOneNavHoldTriggered:Z

.field private mOneNavIsRtl:Z

.field private final mOneNavLongHoldRunnable:Ljava/lang/Runnable;

.field private mOneNavLongHoldVibePattern:[J

.field mOneNavShowNavigationBar:Z

.field private mOneNavSwipeDirectionSwitch:Z

.field private mOneNavSwipeVibePattern:[J

.field private mOneNavTapVibePattern:[J

.field private mOneNavTouchAndHoldVibePattern:[J

.field private mOneNavTutorialEnabled:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSm:Landroid/hardware/SensorManager;

.field private mStowed:Z

.field private final mStowedListener:Landroid/hardware/SensorEventListener;

.field private final mStowedLock:Ljava/lang/Object;

.field private mStowedSensor:Landroid/hardware/Sensor;

.field private final mTouchToLockAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/FingerprintGestureController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/FingerprintGestureController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mDisplayOffByFingerprint:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/FingerprintGestureController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/FingerprintGestureController;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/FingerprintGestureController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/FingerprintGestureController;->mDisplayOffByFingerprint:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/FingerprintGestureController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavIsRtl:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/FingerprintGestureController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/FingerprintGestureController;Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/FingerprintGestureController;->checkSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/FingerprintGestureController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->cancelTouchToLockAlarm()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/FingerprintGestureController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->updateOneNavSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 66
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_TS:Z

    .line 67
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    .line 847
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 848
    const/4 v1, 0x4

    .line 847
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 849
    const/16 v1, 0xd

    .line 847
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/FingerprintGestureController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/FingerprintGestureController$Callbacks;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    .param p4, "callbacks"    # Lcom/android/server/policy/FingerprintGestureController$Callbacks;

    .prologue
    const/16 v1, 0x8

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_1b2

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->FINGERPRINT_NAV_ACTIONMAP_LEGACY:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_1c6

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->FINGERPRINT_NAV_ACTIONMAP_DEFAULT:[I

    .line 160
    iput-boolean v9, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowed:Z

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Lcom/android/server/policy/FingerprintGestureController$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FingerprintGestureController$1;-><init>(Lcom/android/server/policy/FingerprintGestureController;)V

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedListener:Landroid/hardware/SensorEventListener;

    .line 190
    new-instance v0, Lcom/android/server/policy/FingerprintGestureController$-void__init__android_content_Context_context_android_os_Handler_handler_com_android_server_policy_keyguard_KeyguardServiceDelegate_keyguardDelegate_com_android_server_policy_FingerprintGestureController$Callbacks_callbacks_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FingerprintGestureController$-void__init__android_content_Context_context_android_os_Handler_handler_com_android_server_policy_keyguard_KeyguardServiceDelegate_keyguardDelegate_com_android_server_policy_FingerprintGestureController$Callbacks_callbacks_LambdaImpl0;-><init>(Lcom/android/server/policy/FingerprintGestureController;)V

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintRunnable:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lcom/android/server/policy/FingerprintGestureController$-void__init__android_content_Context_context_android_os_Handler_handler_com_android_server_policy_keyguard_KeyguardServiceDelegate_keyguardDelegate_com_android_server_policy_FingerprintGestureController$Callbacks_callbacks_LambdaImpl1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FingerprintGestureController$-void__init__android_content_Context_context_android_os_Handler_handler_com_android_server_policy_keyguard_KeyguardServiceDelegate_keyguardDelegate_com_android_server_policy_FingerprintGestureController$Callbacks_callbacks_LambdaImpl1;-><init>(Lcom/android/server/policy/FingerprintGestureController;)V

    .line 192
    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mTouchToLockAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 229
    new-instance v0, Lcom/android/server/policy/FingerprintGestureController$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FingerprintGestureController$2;-><init>(Lcom/android/server/policy/FingerprintGestureController;)V

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 677
    new-instance v0, Lcom/android/server/policy/FingerprintGestureController$-void__init__android_content_Context_context_android_os_Handler_handler_com_android_server_policy_keyguard_KeyguardServiceDelegate_keyguardDelegate_com_android_server_policy_FingerprintGestureController$Callbacks_callbacks_LambdaImpl2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FingerprintGestureController$-void__init__android_content_Context_context_android_os_Handler_handler_com_android_server_policy_keyguard_KeyguardServiceDelegate_keyguardDelegate_com_android_server_policy_FingerprintGestureController$Callbacks_callbacks_LambdaImpl2;-><init>(Lcom/android/server/policy/FingerprintGestureController;)V

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavLongHoldRunnable:Ljava/lang/Runnable;

    .line 312
    iput-object p1, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    .line 313
    iput-object p2, p0, Lcom/android/server/policy/FingerprintGestureController;->mHandler:Landroid/os/Handler;

    .line 314
    iput-object p3, p0, Lcom/android/server/policy/FingerprintGestureController;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 315
    iput-object p4, p0, Lcom/android/server/policy/FingerprintGestureController;->mCallbacks:Lcom/android/server/policy/FingerprintGestureController$Callbacks;

    .line 317
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/policy/FingerprintGestureController;->checkSettings(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mDisplayOffByFingerprint:Z

    .line 318
    new-instance v0, Lcom/android/server/policy/FingerprintGestureController$3;

    invoke-direct {v0, p0, v4}, Lcom/android/server/policy/FingerprintGestureController$3;-><init>(Lcom/android/server/policy/FingerprintGestureController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContentObserver:Landroid/database/ContentObserver;

    .line 328
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    const-string/jumbo v1, "display_off_by_fps"

    .line 328
    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mContentObserver:Landroid/database/ContentObserver;

    .line 330
    const/4 v5, -0x1

    .line 328
    invoke-virtual {v0, v1, v9, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 332
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->FINGERPRINT_NAV_ACTIONMAP_LEGACY:[I

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mActionMap:[I

    .line 333
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 334
    const v1, 0x11200cf

    .line 333
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasOneNavFeature:Z

    .line 335
    iget-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasOneNavFeature:Z

    if-eqz v0, :cond_be

    .line 336
    new-instance v0, Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;

    invoke-direct {v0, p0, v4}, Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;-><init>(Lcom/android/server/policy/FingerprintGestureController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavContentObserver:Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;

    .line 337
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavContentObserver:Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;->observe()V

    .line 339
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 346
    iget-object v5, p0, Lcom/android/server/policy/FingerprintGestureController;->mHandler:Landroid/os/Handler;

    .line 345
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 348
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v8, :cond_1a4

    move v0, v8

    :goto_bc
    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavIsRtl:Z

    .line 352
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_be
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 353
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mVibrator:Landroid/os/Vibrator;

    .line 354
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1a7

    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    :goto_e2
    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasVibrator:Z

    .line 355
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 356
    const v1, 0x1070060

    .line 355
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavTouchAndHoldVibePattern:[J

    .line 357
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 358
    const v1, 0x107005f

    .line 357
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavTapVibePattern:[J

    .line 359
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 360
    const v1, 0x107005e

    .line 359
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavSwipeVibePattern:[J

    .line 361
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 362
    const v1, 0x1070061

    .line 361
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavLongHoldVibePattern:[J

    .line 365
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 366
    .local v6, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v6, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mDisplay:Landroid/view/Display;

    .line 368
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mSm:Landroid/hardware/SensorManager;

    .line 369
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mSm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_161

    .line 370
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mSm:Landroid/hardware/SensorManager;

    const v1, 0x10003

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v7

    .line 371
    .local v7, "stowedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1aa

    .line 372
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedSensor:Landroid/hardware/Sensor;

    .line 373
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 380
    .end local v7    # "stowedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_161
    :goto_161
    const-string/jumbo v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 379
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 381
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mPowerManager:Landroid/os/PowerManager;

    .line 383
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 384
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 385
    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "Upgrade ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->isFingerprintEnrolled()Z

    move-result v0

    if-eqz v0, :cond_1a3

    iget-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mDisplayOffByFingerprint:Z

    if-eqz v0, :cond_1ad

    .line 311
    :cond_1a3
    :goto_1a3
    return-void

    .end local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    :cond_1a4
    move v0, v9

    .line 348
    goto/16 :goto_bc

    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_1a7
    move v0, v9

    .line 354
    goto/16 :goto_e2

    .line 375
    .restart local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v7    # "stowedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_1aa
    iput-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedSensor:Landroid/hardware/Sensor;

    goto :goto_161

    .line 387
    .end local v7    # "stowedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_1ad
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->scheduleTouchToLockAlarm()V

    goto :goto_1a3

    .line 95
    nop

    :array_1b2
    .array-data 4
        0x0
        0xff
        0x6
        0x3
        0xff
        0xff
        0xff
        0xff
    .end array-data

    .line 106
    :array_1c6
    .array-data 4
        0x0
        0xff
        0x1
        0x3
        0xff
        0xff
        0x2
        0x0
    .end array-data
.end method

.method private cancelTouchToLockAlarm()V
    .registers 3

    .prologue
    .line 548
    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "cancelTouchToLockAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mTouchToLockAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 547
    return-void
.end method

.method private checkSettings(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 442
    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 443
    const-string/jumbo v2, "display_off_by_fps"

    .line 444
    const/4 v3, -0x2

    .line 442
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private getCurrentUserId()I
    .registers 4

    .prologue
    .line 477
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v1

    .line 478
    :catch_b
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintController"

    const-string/jumbo v2, "getCurrentUserId fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v1, -0x2

    return v1
.end method

.method private getDozeEnabled()I
    .registers 5

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 438
    const-string/jumbo v1, "doze_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 437
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private inLockTask()Z
    .registers 3

    .prologue
    .line 244
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    .line 245
    :catch_9
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private isDreaming()Z
    .registers 4

    .prologue
    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_e

    move-result v1

    if-eqz v1, :cond_18

    .line 450
    const/4 v1, 0x1

    return v1

    .line 452
    :catch_e
    move-exception v0

    .line 453
    .local v0, "rne":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintController"

    const-string/jumbo v2, "RemoteException when checking if dreaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v0    # "rne":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method private isFingerprintEnrolled()Z
    .registers 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isMotoDisplayEnabled()Z
    .registers 3

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->getDozeEnabled()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isUserSetupComplete()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 463
    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 464
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    .line 463
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private performFingerprintNavAction(I)I
    .registers 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v5, 0x1

    .line 719
    iget-boolean v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavTutorialEnabled:Z

    if-eqz v2, :cond_18

    .line 720
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_14

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "In tutorial mode!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_14
    invoke-direct {p0, p1, v7}, Lcom/android/server/policy/FingerprintGestureController;->performHapticFeedback(IZ)V

    .line 722
    return v5

    .line 725
    :cond_18
    add-int/lit16 v1, p1, -0x11d

    .line 726
    .local v1, "actionIndex":I
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "FingerprintController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FPS NAV "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/policy/FingerprintGestureController;->translateNavActionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_3c
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mActionMap:[I

    invoke-direct {p0, v1}, Lcom/android/server/policy/FingerprintGestureController;->swipeInOut(I)I

    move-result v3

    aget v0, v2, v3

    .line 729
    .local v0, "action":I
    sparse-switch v0, :sswitch_data_11a

    .line 774
    :goto_47
    invoke-direct {p0, p1, v7}, Lcom/android/server/policy/FingerprintGestureController;->performHapticFeedback(IZ)V

    .line 775
    return v6

    .line 731
    :sswitch_4b
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_58

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "perform action FINGERPRINT_NAV_ACTION_BACK[0]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_58
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/server/policy/FingerprintGestureController;->sendDownAndUpKeyEvents(I)V

    goto :goto_47

    .line 735
    :sswitch_5d
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "perform action FINGERPRINT_NAV_ACTION_HOME[1]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_6a
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/policy/FingerprintGestureController;->sendDownAndUpKeyEvents(I)V

    goto :goto_47

    .line 739
    :sswitch_6f
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_7c

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "perform action FINGERPRINT_NAV_ACTION_RECENTS[2]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_7c
    const/16 v2, 0xbb

    invoke-direct {p0, v2}, Lcom/android/server/policy/FingerprintGestureController;->sendDownAndUpKeyEvents(I)V

    goto :goto_47

    .line 743
    :sswitch_82
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_8f

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "perform action FINGERPRINT_NAV_ACTION_LOCK[3]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_8f
    iget-boolean v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasOneNavFeature:Z

    if-eqz v2, :cond_aa

    iget-boolean v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavEnabled:Z

    if-eqz v2, :cond_aa

    .line 748
    iput-boolean v5, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavHoldTriggered:Z

    .line 749
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavLongHoldRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 750
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavLongHoldRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_47

    .line 745
    :cond_aa
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_b7

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "OneNav is OFF..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_b7
    invoke-direct {p0, v5}, Lcom/android/server/policy/FingerprintGestureController;->performTouchToLock(Z)V

    goto :goto_47

    .line 754
    :sswitch_bb
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_c8

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "perform action FINGERPRINT_NAV_ACTION_NOTE[4]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_c8
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mCallbacks:Lcom/android/server/policy/FingerprintGestureController$Callbacks;

    invoke-interface {v2}, Lcom/android/server/policy/FingerprintGestureController$Callbacks;->onFingerprintShowNotifications()V

    goto/16 :goto_47

    .line 758
    :sswitch_cf
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_dc

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "perform action FINGERPRINT_NAV_ACTION_SETTINGS[5]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_dc
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mCallbacks:Lcom/android/server/policy/FingerprintGestureController$Callbacks;

    invoke-interface {v2}, Lcom/android/server/policy/FingerprintGestureController$Callbacks;->onFingerprintShowSettings()V

    goto/16 :goto_47

    .line 762
    :sswitch_e3
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_f0

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "FPS: Show TSB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_f0
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mCallbacks:Lcom/android/server/policy/FingerprintGestureController$Callbacks;

    invoke-interface {v2}, Lcom/android/server/policy/FingerprintGestureController$Callbacks;->onFingerprintShowTSB()V

    goto/16 :goto_47

    .line 766
    :sswitch_f7
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_104

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "perform action FINGERPRINT_NAV_ACTION_ASSIST[7]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_104
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mCallbacks:Lcom/android/server/policy/FingerprintGestureController$Callbacks;

    invoke-interface {v2}, Lcom/android/server/policy/FingerprintGestureController$Callbacks;->onFingerprintAssist()V

    goto/16 :goto_47

    .line 770
    :sswitch_10b
    sget-boolean v2, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v2, :cond_118

    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "No Action triggered!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_118
    return v6

    .line 729
    nop

    :sswitch_data_11a
    .sparse-switch
        0x0 -> :sswitch_4b
        0x1 -> :sswitch_5d
        0x2 -> :sswitch_6f
        0x3 -> :sswitch_82
        0x4 -> :sswitch_bb
        0x5 -> :sswitch_cf
        0x6 -> :sswitch_e3
        0x7 -> :sswitch_f7
        0xff -> :sswitch_10b
    .end sparse-switch
.end method

.method private performHapticFeedback(IZ)V
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "always"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 853
    iget-boolean v6, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasVibrator:Z

    if-nez v6, :cond_7

    .line 854
    return-void

    .line 859
    :cond_7
    iget-boolean v6, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavEnabled:Z

    if-nez v6, :cond_f

    iget-boolean v6, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavTutorialEnabled:Z

    if-eqz v6, :cond_2f

    :cond_f
    move v0, v5

    .line 860
    .local v0, "hapticsDisabled":Z
    :goto_10
    if-eqz v0, :cond_14

    if-eqz p2, :cond_31

    .line 863
    :cond_14
    const/4 v4, 0x0

    .line 864
    .local v4, "pattern":[J
    sparse-switch p1, :sswitch_data_48

    .line 882
    .end local v4    # "pattern":[J
    :goto_18
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 883
    .local v2, "owningUid":I
    iget-object v6, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 884
    .local v3, "owningPackage":Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v1, :cond_3e

    .line 886
    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mVibrator:Landroid/os/Vibrator;

    aget-wide v4, v4, v5

    sget-object v6, Lcom/android/server/policy/FingerprintGestureController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 852
    :goto_2e
    return-void

    .end local v0    # "hapticsDisabled":Z
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    :cond_2f
    move v0, v1

    .line 859
    goto :goto_10

    .line 861
    .restart local v0    # "hapticsDisabled":Z
    :cond_31
    return-void

    .line 866
    .restart local v4    # "pattern":[J
    :sswitch_32
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavTapVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_18

    .line 872
    .local v4, "pattern":[J
    :sswitch_35
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavSwipeVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_18

    .line 875
    .local v4, "pattern":[J
    :sswitch_38
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavTouchAndHoldVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_18

    .line 878
    .local v4, "pattern":[J
    :sswitch_3b
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavLongHoldVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_18

    .line 889
    .end local v4    # "pattern":[J
    .restart local v2    # "owningUid":I
    .restart local v3    # "owningPackage":Ljava/lang/String;
    :cond_3e
    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Lcom/android/server/policy/FingerprintGestureController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    goto :goto_2e

    .line 864
    nop

    :sswitch_data_48
    .sparse-switch
        -0x1 -> :sswitch_3b
        0x11f -> :sswitch_32
        0x120 -> :sswitch_38
        0x121 -> :sswitch_35
        0x122 -> :sswitch_35
        0x123 -> :sswitch_35
        0x124 -> :sswitch_35
    .end sparse-switch
.end method

.method private performTouchToLock(Z)V
    .registers 11
    .param p1, "playHaptics"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 803
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_12

    .line 804
    const-string/jumbo v3, "FingerprintController"

    const-string/jumbo v4, "User hasn\'t finished the setup yet ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void

    .line 808
    :cond_12
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->isFingerprintEnrolled()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavEnabled:Z

    if-eqz v3, :cond_3f

    .line 810
    :cond_1c
    iget-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mKeyguardActive:Z

    if-nez v3, :cond_3e

    iget-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mDisplayOffByFingerprint:Z

    if-eqz v3, :cond_3e

    .line 811
    const-string/jumbo v3, "FingerprintController"

    const-string/jumbo v4, "Sleep and lock the phone!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 813
    const/4 v6, 0x7

    .line 812
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 814
    if-eqz p1, :cond_3e

    .line 815
    const/16 v3, 0x120

    invoke-direct {p0, v3, v8}, Lcom/android/server/policy/FingerprintGestureController;->performHapticFeedback(IZ)V

    .line 802
    :cond_3e
    :goto_3e
    return-void

    .line 819
    :cond_3f
    iget-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasOneNavFeature:Z

    if-eqz v3, :cond_44

    .line 821
    return-void

    .line 826
    :cond_44
    const-string/jumbo v3, "ro.bootmode"

    const-string/jumbo v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "bootMode":Ljava/lang/String;
    const-string/jumbo v3, "mot-factory"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string/jumbo v3, "factory"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 829
    :cond_60
    return-void

    .line 834
    :cond_61
    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 835
    const-string/jumbo v4, "show_fps_enroll_dialog"

    const/4 v5, -0x2

    .line 834
    invoke-static {v3, v4, v8, v5}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_a5

    const/4 v2, 0x1

    .line 836
    .local v2, "isOkToShowFpsDialog":Z
    :goto_72
    iget-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mKeyguardActive:Z

    if-nez v3, :cond_3e

    if-eqz v2, :cond_3e

    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->isUserSetupComplete()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 837
    const-string/jumbo v3, "FingerprintController"

    const-string/jumbo v4, "Broadcast the FPS show enroll dialog intent."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.motorola.intent.SHOW_FPS_ENROLL_DIALOG"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x30000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 840
    const-string/jumbo v3, "com.android.settings"

    .line 841
    const-string/jumbo v4, "com.android.settings.fingerprint.FingerprintEnrollReceiver"

    .line 840
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3e

    .line 834
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isOkToShowFpsDialog":Z
    :cond_a5
    const/4 v2, 0x0

    .restart local v2    # "isOkToShowFpsDialog":Z
    goto :goto_72
.end method

.method private postNotificationForTouchToLock(Z)V
    .registers 22
    .param p1, "optIn"    # Z

    .prologue
    .line 487
    const-string/jumbo v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 486
    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 489
    .local v2, "notifManager":Landroid/app/INotificationManager;
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 490
    .local v17, "intent":Landroid/content/Intent;
    const v3, 0x34008000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 492
    const-string/jumbo v3, "com.android.settings"

    .line 493
    const-string/jumbo v4, "com.android.settings.fingerprint.TouchToLockFromNotification"

    .line 492
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string/jumbo v3, "optin"

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 496
    const/high16 v5, 0x48000000    # 131072.0f

    .line 495
    move-object/from16 v0, v17

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 498
    .local v19, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_d7

    const v16, 0x1040643

    .line 500
    .local v16, "fpsNotifTitleResId":I
    :goto_3f
    if-eqz p1, :cond_dc

    const v14, 0x1040644

    .line 503
    .local v14, "fpsNotifMessageResId":I
    :goto_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 504
    .local v15, "fpsNotifTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 506
    .local v13, "fpsNotifMessage":Ljava/lang/String;
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 507
    .local v10, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    invoke-virtual {v10, v15}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 508
    invoke-virtual {v10, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 511
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 512
    const v4, 0x1080344

    .line 511
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 514
    const v5, 0x1060059

    .line 513
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 511
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 511
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 519
    const/4 v4, 0x1

    .line 511
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 520
    const/4 v4, 0x1

    .line 511
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 521
    const/4 v4, 0x1

    .line 511
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 522
    const/4 v4, 0x1

    .line 511
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 525
    .local v11, "builder":Landroid/app/Notification$Builder;
    if-nez p1, :cond_c0

    .line 526
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 530
    :cond_c0
    const/4 v3, 0x1

    :try_start_c1
    new-array v8, v3, [I

    .line 531
    .local v8, "outId":[I
    const-string/jumbo v18, "com.motorola.moto"

    .line 532
    .local v18, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "com.motorola.moto"

    const-string/jumbo v4, "com.motorola.moto"

    .line 533
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x2

    .line 532
    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_d6} :catch_e1

    .line 485
    .end local v8    # "outId":[I
    .end local v18    # "packageName":Ljava/lang/String;
    :goto_d6
    return-void

    .line 499
    .end local v10    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .end local v11    # "builder":Landroid/app/Notification$Builder;
    .end local v13    # "fpsNotifMessage":Ljava/lang/String;
    .end local v14    # "fpsNotifMessageResId":I
    .end local v15    # "fpsNotifTitle":Ljava/lang/String;
    .end local v16    # "fpsNotifTitleResId":I
    :cond_d7
    const v16, 0x1040645

    .restart local v16    # "fpsNotifTitleResId":I
    goto/16 :goto_3f

    .line 501
    :cond_dc
    const v14, 0x1040646

    .restart local v14    # "fpsNotifMessageResId":I
    goto/16 :goto_44

    .line 534
    .restart local v10    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .restart local v11    # "builder":Landroid/app/Notification$Builder;
    .restart local v13    # "fpsNotifMessage":Ljava/lang/String;
    .restart local v15    # "fpsNotifTitle":Ljava/lang/String;
    :catch_e1
    move-exception v12

    .line 535
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintController"

    const-string/jumbo v4, "Failed to post notifcation for display off by FPS"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d6
.end method

.method private scheduleTouchToLockAlarm()V
    .registers 8

    .prologue
    .line 541
    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "scheduleTouchToLockAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0xf731400

    add-long v2, v0, v4

    .line 543
    .local v2, "alarmTime":J
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 544
    const-string/jumbo v4, "FingerprintTouchToLock"

    iget-object v5, p0, Lcom/android/server/policy/FingerprintGestureController;->mTouchToLockAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 543
    const/4 v1, 0x1

    .line 544
    const/4 v6, 0x0

    .line 543
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 540
    return-void
.end method

.method private sendDownAndUpKeyEvents(I)V
    .registers 21
    .param p1, "keyCode"    # I

    .prologue
    .line 779
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 782
    .local v16, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 783
    .local v2, "downTime":J
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 784
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    .line 785
    const/16 v13, 0x101

    const/4 v14, 0x0

    move-wide v4, v2

    move/from16 v7, p1

    .line 783
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 786
    .local v15, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    .line 787
    const/4 v7, 0x0

    .line 786
    invoke-virtual {v6, v15, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 788
    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    .line 791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 792
    .local v4, "upTime":J
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 793
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    .line 794
    const/16 v13, 0x101

    const/4 v14, 0x0

    move/from16 v7, p1

    .line 792
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 795
    .local v18, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    .line 796
    const/4 v7, 0x0

    .line 795
    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 797
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 799
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    return-void
.end method

.method private setNavigationBarVisibility(Z)V
    .registers 5
    .param p1, "vis"    # Z

    .prologue
    .line 302
    :try_start_0
    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 301
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 303
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_10

    .line 304
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setNavigationBarVisibility(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 299
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_10
    :goto_10
    return-void

    .line 306
    :catch_11
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_10
.end method

.method private swipeInOut(I)I
    .registers 4
    .param p1, "actionIndex"    # I

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavSwipeDirectionSwitch:Z

    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavIsRtl:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 708
    const/4 v0, 0x7

    if-ne p1, v0, :cond_c

    .line 709
    const/4 p1, 0x6

    .line 715
    :cond_b
    :goto_b
    return p1

    .line 710
    :cond_c
    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    .line 711
    const/4 p1, 0x7

    goto :goto_b
.end method

.method private translateNavActionToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "action"    # I

    .prologue
    .line 688
    packed-switch p1, :pswitch_data_20

    .line 702
    const-string/jumbo v0, "None"

    return-object v0

    .line 690
    :pswitch_7
    const-string/jumbo v0, "HOLD"

    return-object v0

    .line 692
    :pswitch_b
    const-string/jumbo v0, "YPLUS"

    return-object v0

    .line 694
    :pswitch_f
    const-string/jumbo v0, "YMINUS"

    return-object v0

    .line 696
    :pswitch_13
    const-string/jumbo v0, "XPLUS"

    return-object v0

    .line 698
    :pswitch_17
    const-string/jumbo v0, "XMINUS"

    return-object v0

    .line 700
    :pswitch_1b
    const-string/jumbo v0, "TAP"

    return-object v0

    .line 688
    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method private updateOneNavSettings()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 251
    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 253
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "fps_onenav_swipe_direction"

    .line 252
    invoke-static {v2, v3, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7a

    move v3, v4

    :goto_13
    iput-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavSwipeDirectionSwitch:Z

    .line 255
    const-string/jumbo v3, "fps_onenav_tutorial_mode"

    .line 254
    invoke-static {v2, v3, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7c

    move v3, v4

    :goto_1f
    iput-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavTutorialEnabled:Z

    .line 257
    const-string/jumbo v3, "fps_onenav_enabled"

    .line 256
    invoke-static {v2, v3, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7e

    const/4 v0, 0x1

    .line 261
    .local v0, "isOneNavEnabled":Z
    :goto_2b
    const-string/jumbo v3, "fps_onenav_show_navigation_bar"

    .line 260
    invoke-static {v2, v3, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_80

    const/4 v1, 0x1

    .line 267
    .local v1, "isOneNavShowNavigationBar":Z
    :goto_35
    iget-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavEnabled:Z

    if-ne v3, v0, :cond_3d

    iget-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavShowNavigationBar:Z

    if-eq v3, v1, :cond_79

    .line 272
    :cond_3d
    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavEnabled:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavShowNavigationBar:Z

    .line 278
    iget-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavEnabled:Z

    if-eqz v3, :cond_82

    .line 279
    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController;->FINGERPRINT_NAV_ACTIONMAP_DEFAULT:[I

    iput-object v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mActionMap:[I

    .line 284
    :goto_49
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->inLockTask()Z

    move-result v3

    if-nez v3, :cond_8b

    .line 285
    const-string/jumbo v5, "FingerprintController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set navigation bar to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavEnabled:Z

    if-eqz v3, :cond_87

    const-string/jumbo v3, "in-visible"

    :goto_65
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavEnabled:Z

    if-eqz v3, :cond_76

    iget-boolean v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavShowNavigationBar:Z

    :cond_76
    invoke-direct {p0, v4}, Lcom/android/server/policy/FingerprintGestureController;->setNavigationBarVisibility(Z)V

    .line 250
    :cond_79
    :goto_79
    return-void

    .end local v0    # "isOneNavEnabled":Z
    .end local v1    # "isOneNavShowNavigationBar":Z
    :cond_7a
    move v3, v5

    .line 252
    goto :goto_13

    :cond_7c
    move v3, v5

    .line 254
    goto :goto_1f

    .line 256
    :cond_7e
    const/4 v0, 0x0

    .restart local v0    # "isOneNavEnabled":Z
    goto :goto_2b

    .line 260
    :cond_80
    const/4 v1, 0x0

    .restart local v1    # "isOneNavShowNavigationBar":Z
    goto :goto_35

    .line 281
    :cond_82
    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController;->FINGERPRINT_NAV_ACTIONMAP_LEGACY:[I

    iput-object v3, p0, Lcom/android/server/policy/FingerprintGestureController;->mActionMap:[I

    goto :goto_49

    .line 285
    :cond_87
    const-string/jumbo v3, "visible"

    goto :goto_65

    .line 294
    :cond_8b
    const-string/jumbo v3, "FingerprintController"

    const-string/jumbo v4, "Task locked!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79
.end method

.method private wakeUpOrNotifyMotoDisplay(I)V
    .registers 9
    .param p1, "keyCode"    # I

    .prologue
    const/16 v6, 0x120

    .line 553
    iget-boolean v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowed:Z

    if-eqz v2, :cond_10

    .line 554
    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "Device stowned ..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void

    .line 558
    :cond_10
    const/16 v2, 0x11f

    if-eq p1, v2, :cond_16

    .line 559
    if-ne p1, v6, :cond_4c

    .line 561
    :cond_16
    :goto_16
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->isFingerprintEnrolled()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 562
    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "Display off, not stowed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->isMotoDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 564
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimSecure()Z

    move-result v2

    .line 563
    if-eqz v2, :cond_51

    .line 565
    :cond_3f
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v3, "android.policy:FPS"

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 552
    :cond_4b
    :goto_4b
    return-void

    .line 560
    :cond_4c
    const/16 v2, 0x11d

    if-ne p1, v2, :cond_4b

    goto :goto_16

    .line 568
    :cond_51
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerWithMotoDisplay;->getMotoDisplayService()Landroid/app/IMotoDisplayIntService;

    move-result-object v1

    .line 569
    .local v1, "motoDisplayService":Landroid/app/IMotoDisplayIntService;
    if-eqz v1, :cond_67

    .line 571
    const/4 v2, 0x7

    :try_start_58
    invoke-interface {v1, v2}, Landroid/app/IMotoDisplayIntService;->notifyFpsError(I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_4b

    .line 572
    :catch_5c
    move-exception v0

    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "Remote exception for notifyFpsError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 576
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_67
    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "MotoDisplay is not ready yet!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 581
    .end local v1    # "motoDisplayService":Landroid/app/IMotoDisplayIntService;
    :cond_71
    if-ne p1, v6, :cond_4b

    .line 582
    iget-boolean v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasOneNavFeature:Z

    .line 581
    if-eqz v2, :cond_4b

    .line 582
    iget-boolean v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavEnabled:Z

    .line 581
    if-eqz v2, :cond_4b

    .line 583
    const-string/jumbo v2, "FingerprintController"

    const-string/jumbo v3, "HOLD, Waking up the display ..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v3, "android.policy:FPS"

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 585
    const/4 v2, 0x0

    invoke-direct {p0, v6, v2}, Lcom/android/server/policy/FingerprintGestureController;->performHapticFeedback(IZ)V

    goto :goto_4b
.end method


# virtual methods
.method synthetic -com_android_server_policy_FingerprintGestureController_lambda$1()V
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/FingerprintGestureController;->performTouchToLock(Z)V

    .line 0
    return-void
.end method

.method synthetic -com_android_server_policy_FingerprintGestureController_lambda$2()V
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/FingerprintGestureController;->postNotificationForTouchToLock(Z)V

    .line 0
    return-void
.end method

.method synthetic -com_android_server_policy_FingerprintGestureController_lambda$3()V
    .registers 3

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavHoldTriggered:Z

    if-eqz v0, :cond_1e

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavHoldTriggered:Z

    .line 681
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/FingerprintGestureController;->performHapticFeedback(IZ)V

    .line 682
    sget-boolean v0, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v0, :cond_19

    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "Trigger long hold ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_19
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mCallbacks:Lcom/android/server/policy/FingerprintGestureController$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/FingerprintGestureController$Callbacks;->onFingerprintAssist()V

    .line 0
    :cond_1e
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "FingerprintController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDisplayOffByFingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mDisplayOffByFingerprint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mHasOneNavFeature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasOneNavFeature:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    iget-boolean v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasOneNavFeature:Z

    if-eqz v0, :cond_dd

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOneNavEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOneNavSwipeDirectionSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavSwipeDirectionSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOneNavIsRtl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavIsRtl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOneNavTutorialEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavTutorialEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    :cond_dd
    return-void
.end method

.method public isFingerprintNavGesture(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_8

    .line 419
    const/4 v0, 0x0

    return v0

    .line 417
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 408
    nop

    :pswitch_data_8
    .packed-switch 0x11d
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public processInputEvent(IZ)I
    .registers 15
    .param p1, "keyCode"    # I
    .param p2, "isKeyguardActive"    # Z

    .prologue
    const-wide/16 v10, 0x14d

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 592
    const/4 v1, -0x2

    .line 594
    .local v1, "result":I
    sget-boolean v4, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_ACTION:Z

    if-eqz v4, :cond_2e

    const-string/jumbo v4, "FingerprintController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OneNav: keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isKeyguardActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_2e
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mDisplay:Landroid/view/Display;

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    if-ne v4, v9, :cond_4a

    :cond_3a
    const/4 v0, 0x1

    .line 596
    .local v0, "displayOff":Z
    :goto_3b
    iput-boolean p2, p0, Lcom/android/server/policy/FingerprintGestureController;->mKeyguardActive:Z

    .line 598
    packed-switch p1, :pswitch_data_188

    .line 671
    const-string/jumbo v4, "FingerprintController"

    const-string/jumbo v5, "Unknow keycode for FPS OneNav!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_49
    :goto_49
    return v1

    .line 595
    .end local v0    # "displayOff":Z
    :cond_4a
    const/4 v0, 0x0

    .restart local v0    # "displayOff":Z
    goto :goto_3b

    .line 600
    :pswitch_4c
    iget-boolean v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasOneNavFeature:Z

    if-eqz v4, :cond_77

    .line 601
    sget-boolean v4, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_TS:Z

    if-eqz v4, :cond_49

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavFingerDownTs:J

    .line 603
    const-string/jumbo v4, "FingerprintController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Finger DOWN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavFingerDownTs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 607
    :cond_77
    if-nez v0, :cond_7f

    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->isDreaming()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 614
    :cond_7f
    invoke-direct {p0, p1}, Lcom/android/server/policy/FingerprintGestureController;->wakeUpOrNotifyMotoDisplay(I)V

    .line 616
    :cond_82
    :goto_82
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mCallbacks:Lcom/android/server/policy/FingerprintGestureController$Callbacks;

    invoke-interface {v4}, Lcom/android/server/policy/FingerprintGestureController$Callbacks;->onFingerprintDown()V

    goto :goto_49

    .line 608
    :cond_88
    iget-boolean v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mKeyguardActive:Z

    if-nez v4, :cond_82

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintDownTimeStamp:J

    .line 610
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 611
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_82

    .line 620
    :pswitch_a1
    iget-boolean v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mHasOneNavFeature:Z

    if-eqz v4, :cond_fa

    .line 621
    sget-boolean v4, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_TS:Z

    if-eqz v4, :cond_e3

    .line 622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 623
    .local v2, "now":J
    const-string/jumbo v4, "FingerprintController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Finger UP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavFingerDownTs:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mOneNavHoldTriggered = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavHoldTriggered:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v2    # "now":J
    :cond_e3
    iget-boolean v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavTutorialEnabled:Z

    if-eqz v4, :cond_e8

    .line 627
    return v9

    .line 630
    :cond_e8
    iget-boolean v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavHoldTriggered:Z

    if-eqz v4, :cond_49

    .line 632
    iput-boolean v8, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavHoldTriggered:Z

    .line 633
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavLongHoldRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 634
    invoke-direct {p0, v8}, Lcom/android/server/policy/FingerprintGestureController;->performTouchToLock(Z)V

    goto/16 :goto_49

    .line 639
    :cond_fa
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintUpTimeStamp:J

    .line 641
    iget-wide v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintUpTimeStamp:J

    iget-wide v6, p0, Lcom/android/server/policy/FingerprintGestureController;->mFingerprintDownTimeStamp:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-gez v4, :cond_49

    .line 642
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->isFingerprintEnrolled()Z

    move-result v4

    .line 641
    if-eqz v4, :cond_49

    .line 643
    const-string/jumbo v4, "FingerprintController"

    const-string/jumbo v5, "Show TSB"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mCallbacks:Lcom/android/server/policy/FingerprintGestureController$Callbacks;

    invoke-interface {v4}, Lcom/android/server/policy/FingerprintGestureController$Callbacks;->onFingerprintShowTSB()V

    goto/16 :goto_49

    .line 654
    :pswitch_126
    sget-boolean v4, Lcom/android/server/policy/FingerprintGestureController;->DEBUG_TS:Z

    if-eqz v4, :cond_166

    .line 655
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 656
    .restart local v2    # "now":J
    const-string/jumbo v4, "FingerprintController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Finger "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavFingerDownTs:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mOneNavFingerDownTs:J

    .line 659
    .end local v2    # "now":J
    :cond_166
    if-nez v0, :cond_16e

    invoke-direct {p0}, Lcom/android/server/policy/FingerprintGestureController;->isDreaming()Z

    move-result v4

    if-eqz v4, :cond_173

    .line 666
    :cond_16e
    invoke-direct {p0, p1}, Lcom/android/server/policy/FingerprintGestureController;->wakeUpOrNotifyMotoDisplay(I)V

    goto/16 :goto_49

    .line 660
    :cond_173
    iget-boolean v4, p0, Lcom/android/server/policy/FingerprintGestureController;->mKeyguardActive:Z

    if-nez v4, :cond_17d

    .line 661
    invoke-direct {p0, p1}, Lcom/android/server/policy/FingerprintGestureController;->performFingerprintNavAction(I)I

    move-result v1

    goto/16 :goto_49

    .line 663
    :cond_17d
    const-string/jumbo v4, "FingerprintController"

    const-string/jumbo v5, "Keyguard active, ignore fingerprint gesture."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 598
    :pswitch_data_188
    .packed-switch 0x11d
        :pswitch_4c
        :pswitch_a1
        :pswitch_126
        :pswitch_126
        :pswitch_126
        :pswitch_126
        :pswitch_126
        :pswitch_126
    .end packed-switch
.end method

.method public screenOffEvent()V
    .registers 5

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mSm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_12

    .line 403
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 401
    :cond_12
    return-void
.end method

.method public screenOnEvent()V
    .registers 4

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mSm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_18

    .line 394
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 395
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    const/4 v1, 0x0

    :try_start_15
    iput-boolean v1, p0, Lcom/android/server/policy/FingerprintGestureController;->mStowed:Z
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_19

    monitor-exit v0

    .line 392
    :cond_18
    return-void

    .line 395
    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method

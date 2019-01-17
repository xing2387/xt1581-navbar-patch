.class public Lcom/android/server/location/GnssLocationProvider;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$1;,
        Lcom/android/server/location/GnssLocationProvider$2;,
        Lcom/android/server/location/GnssLocationProvider$3;,
        Lcom/android/server/location/GnssLocationProvider$4;,
        Lcom/android/server/location/GnssLocationProvider$5;,
        Lcom/android/server/location/GnssLocationProvider$6;,
        Lcom/android/server/location/GnssLocationProvider$7;,
        Lcom/android/server/location/GnssLocationProvider$8;,
        Lcom/android/server/location/GnssLocationProvider$BackOff;,
        Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/GnssLocationProvider$GpsRequest;,
        Lcom/android/server/location/GnssLocationProvider$MovementMonitor;,
        Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_MVMT_MON:Ljava/lang/String; = "com.android.internal.location.ALARM_MVMT_MON"

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final BATTERY_SAVER_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final BATTERY_SAVER_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field private static final BATTERY_SAVER_MODE_NO_CHANGE:I = 0x0

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z

.field private static final DEFAULT_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final FIX:Z = true

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_LOCK_ALL:I = 0x4

.field private static final GPS_LOCK_MI:I = 0x2

.field private static final GPS_LOCK_MT:I = 0x3

.field private static final GPS_LOCK_NONE:I = 0x1

.field private static final GPS_LOCK_UNDEFINED:I = -0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_NATIVE_RETRIES:I = 0x5

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final MAX_SVS:I = 0x40

.field private static final MOTO_INITIALIZE:I = 0x10

.field private static final MOT_SLPC_SYSTEM_BOOTED:Ljava/lang/String; = "com.motorola.slpc.SlpcSystem.BOOTED"

.field private static final MSG_MVMT_ALARM:I = 0x11

.field private static final NO_FIX:Z = false

.field private static final NO_FIX_MVMT_MON_TIMEOUT:I = 0xea60

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "/etc/gps"

.field private static final PROPERTIES_FILE_SUFFIX:Ljava/lang/String; = ".conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final RELEASE_SUPL_CONNECTION:I = 0xf

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_SUPL_CONNECTION:I = 0xe

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"


# instance fields
.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mAzimString:Ljava/lang/String;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private mCn0s:[F

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultApn:Ljava/lang/String;

.field private mDisableGps:Z

.field private mDownloadXtraDataPending:I

.field private mElevString:Ljava/lang/String;

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private volatile mEngineLock:I

.field private mEngineOn:Z

.field private mEngineOnStatus:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mFlagString:Ljava/lang/String;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

.field private mGpsConfFromSim:Z

.field private mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

.field private mGpsLock:I

.field private mGpsStartTime:J

.field private mGpsStopTime:J

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field mInitializeNvItems:Ljava/lang/Runnable;

.field private mInitializeRetry:I

.field private volatile mInitialized:Z

.field private mInjectNtpTimePending:I

.field private mLastFixTime:J

.field private mLastSvTime:J

.field private final mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLock:Ljava/lang/Object;

.field private mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

.field private final mMvmtMonIntent:Landroid/app/PendingIntent;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNmeaBuffer:[B

.field private mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mOnDemandTimeInjection:Z

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSaving:Z

.field private volatile mSetLockAllowed:Z

.field private mSilentCnt:I

.field private mSingleShot:Z

.field private mSmartGpsStartTime:J

.field private mSmartGpsStopTime:J

.field private mSnrsString:Ljava/lang/String;

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvidWithFlags:[I

.field private mSvsString:Ljava/lang/String;

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

.field private mYearOfHardware:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/location/GnssLocationProvider;)Landroid/location/ILocationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInitialized:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/location/GnssLocationProvider;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    return-wide v0
.end method

.method static synthetic -get13(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/location/GnssLocationProvider;)Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$MovementMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/location/GnssLocationProvider;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnDemandTimeInjection:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSaving:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/location/GnssLocationProvider;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSmartGpsStartTime:J

    return-wide v0
.end method

.method static synthetic -get25(Lcom/android/server/location/GnssLocationProvider;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSmartGpsStopTime:J

    return-wide v0
.end method

.method static synthetic -get26(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    return v0
.end method

.method static synthetic -get29(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/location/GnssLocationProvider;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic -get33(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/GnssLocationProvider;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/location/GnssLocationProvider;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/location/GnssLocationProvider;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/location/GnssLocationProvider;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSaving:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/location/GnssLocationProvider;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSetLockAllowed:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/location/GnssLocationProvider;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSmartGpsStartTime:J

    return-wide p1
.end method

.method static synthetic -set6(Lcom/android/server/location/GnssLocationProvider;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSmartGpsStopTime:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/server/location/GnssLocationProvider;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    return p1
.end method

.method static synthetic -wrap0(IDDDIIII)Z
    .registers 12
    .param p0, "geofenceId"    # I
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D
    .param p7, "lastTransition"    # I
    .param p8, "monitorTransitions"    # I
    .param p9, "notificationResponsivenes"    # I
    .param p10, "unknownTimer"    # I

    .prologue
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GnssLocationProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_xtra()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleMotSlpcBooted()V

    return-void
.end method

.method static synthetic -wrap2()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleMotoInitialize()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/location/GnssLocationProvider;I)V
    .registers 2
    .param p1, "agpsDataConnStatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleRequestSuplConnection(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateNetworkState(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/location/GnssLocationProvider;ILandroid/app/PendingIntent;)V
    .registers 3
    .param p1, "alarmOffset"    # I
    .param p2, "alarmIntent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/location/GnssLocationProvider;ILandroid/app/PendingIntent;)V
    .registers 3
    .param p1, "alarmOffset"    # I
    .param p2, "alarmIntent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/location/GnssLocationProvider;JJI)V
    .registers 7
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GnssLocationProvider;->native_inject_time(JJI)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/location/GnssLocationProvider;[BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic -wrap3()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/location/GnssLocationProvider;II)V
    .registers 3
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/location/GnssLocationProvider;ILjava/lang/String;I)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/location/GnssLocationProvider;I)V
    .registers 2
    .param p1, "connStatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V
    .registers 4
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/location/GnssLocationProvider;ZZ)V
    .registers 3
    .param p1, "singleShot"    # Z
    .param p2, "silent"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->startNavigating_Locked(ZZ)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/location/GnssLocationProvider;ZZ)V
    .registers 3
    .param p1, "singleShot"    # Z
    .param p2, "silent"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(ZZ)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEngineLock()V

    return-void
.end method

.method static synthetic -wrap4()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    return-void
.end method

.method static synthetic -wrap5(I)Z
    .registers 2
    .param p0, "geofenceId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(I)Z
    .registers 2
    .param p0, "geofenceId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(II)Z
    .registers 3
    .param p0, "geofenceId"    # I
    .param p1, "transitions"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 121
    const-string/jumbo v0, "persist.log.aplogd.enable"

    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    .line 132
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    .line 134
    const/4 v8, 0x3

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    .line 132
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 3317
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 113
    return-void

    :cond_2a
    move v0, v3

    .line 121
    goto :goto_16
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v7, 0x40

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsStartTime:J

    .line 127
    iput-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsStopTime:J

    .line 128
    iput-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mSmartGpsStartTime:J

    .line 129
    iput-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mSmartGpsStopTime:J

    .line 298
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 300
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    .line 303
    iput v10, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 322
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    .line 339
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$BackOff;

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0xdbba00

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/location/GnssLocationProvider$BackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    .line 340
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$BackOff;

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0xdbba00

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/location/GnssLocationProvider$BackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    .line 345
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mInitializeRetry:I

    .line 347
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mInitialized:Z

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineLock:I

    .line 349
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSetLockAllowed:Z

    .line 367
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    .line 368
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 384
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 399
    iput-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 401
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 408
    iput-object v11, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 410
    iput-object v11, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 412
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 421
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    .line 424
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 429
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    .line 430
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 435
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsLock:I

    .line 483
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 487
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    .line 489
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$1;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    .line 521
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$2;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 520
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 535
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$3;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 534
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 553
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$4;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 601
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$5;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$5;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 600
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 974
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$6;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$6;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInitializeNvItems:Ljava/lang/Runnable;

    .line 1593
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$7;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$7;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    .line 2373
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$8;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$8;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 3300
    new-array v0, v7, [I

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    .line 3301
    new-array v0, v7, [F

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    .line 3302
    new-array v0, v7, [F

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    .line 3303
    new-array v0, v7, [F

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    .line 3315
    const/16 v0, 0x78

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    .line 850
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 851
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 852
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 854
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 857
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 858
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "GnssLocationProvider"

    invoke-virtual {v0, v10, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 859
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 862
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 863
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 865
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.location.ALARM_MVMT_MON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    .line 868
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 872
    const-string/jumbo v0, "appops"

    .line 871
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 876
    const-string/jumbo v0, "batterystats"

    .line 875
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 879
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 882
    const-string/jumbo v0, "persist.mot.gps.conf.from.sim"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsConfFromSim:Z

    .line 883
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_189

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGpsConfFromSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsConfFromSim:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_189
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    .line 892
    const/16 v0, 0xd

    invoke-direct {p0, v0, v6, v11}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 895
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 896
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 897
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 895
    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 899
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$9;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$9;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 911
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$10;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$10;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 933
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$11;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$11;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 956
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 849
    return-void
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2839
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    packed-switch v0, :pswitch_data_16

    .line 2847
    const-string/jumbo v0, "<Unknown>"

    return-object v0

    .line 2841
    :pswitch_9
    const-string/jumbo v0, "CLOSED"

    return-object v0

    .line 2843
    :pswitch_d
    const-string/jumbo v0, "OPEN"

    return-object v0

    .line 2845
    :pswitch_11
    const-string/jumbo v0, "OPENING"

    return-object v0

    .line 2839
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .registers 3
    .param p1, "agpsDataConnStatus"    # I

    .prologue
    .line 2855
    packed-switch p1, :pswitch_data_1c

    .line 2867
    const-string/jumbo v0, "<Unknown>"

    return-object v0

    .line 2857
    :pswitch_7
    const-string/jumbo v0, "CONNECTED"

    return-object v0

    .line 2859
    :pswitch_b
    const-string/jumbo v0, "DONE"

    return-object v0

    .line 2861
    :pswitch_f
    const-string/jumbo v0, "FAILED"

    return-object v0

    .line 2863
    :pswitch_13
    const-string/jumbo v0, "RELEASE"

    return-object v0

    .line 2865
    :pswitch_17
    const-string/jumbo v0, "REQUEST"

    return-object v0

    .line 2855
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method private buildLocation(IDDDFFFJ)Landroid/location/Location;
    .registers 19
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 2229
    new-instance v2, Landroid/location/Location;

    const-string/jumbo v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2230
    .local v2, "location":Landroid/location/Location;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 2231
    invoke-virtual {v2, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 2232
    invoke-virtual {v2, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 2233
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 2234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 2236
    :cond_1f
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 2237
    invoke-virtual {v2, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 2239
    :cond_27
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2f

    .line 2240
    invoke-virtual {v2, p8}, Landroid/location/Location;->setSpeed(F)V

    .line 2242
    :cond_2f
    and-int/lit8 v3, p1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_38

    .line 2243
    invoke-virtual {v2, p9}, Landroid/location/Location;->setBearing(F)V

    .line 2245
    :cond_38
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_43

    .line 2246
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 2248
    :cond_43
    return-object v2
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 689
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 690
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    if-nez v1, :cond_10

    .line 691
    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v4, "Message does not exist in the intent."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void

    .line 695
    :cond_10
    const/4 v3, 0x0

    array-length v4, v1

    :goto_12
    if-ge v3, v4, :cond_29

    aget-object v0, v1, v3

    .line 696
    .local v0, "message":Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_26

    iget-object v5, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v5, :cond_26

    .line 697
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 698
    .local v2, "suplInit":[B
    if-eqz v2, :cond_26

    .line 699
    array-length v5, v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/location/GnssLocationProvider;->native_agps_ni_message([BI)V

    .line 695
    .end local v2    # "suplInit":[B
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 688
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    :cond_29
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 706
    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 707
    .local v0, "suplInit":[B
    if-nez v0, :cond_a

    .line 708
    return-void

    .line 710
    :cond_a
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_agps_ni_message([BI)V

    .line 705
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1628
    if-nez p1, :cond_d

    .line 1629
    const v0, 0xffff

    .line 1647
    .local v0, "flags":I
    :cond_6
    :goto_6
    if-eqz v0, :cond_a2

    .line 1648
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 1649
    const/4 v1, 0x1

    return v1

    .line 1631
    .end local v0    # "flags":I
    :cond_d
    const/4 v0, 0x0

    .line 1632
    .restart local v0    # "flags":I
    const-string/jumbo v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    .line 1633
    :cond_18
    const-string/jumbo v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    or-int/lit8 v0, v0, 0x2

    .line 1634
    :cond_23
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    or-int/lit8 v0, v0, 0x4

    .line 1635
    :cond_2e
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    or-int/lit8 v0, v0, 0x8

    .line 1636
    :cond_39
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    or-int/lit8 v0, v0, 0x10

    .line 1637
    :cond_44
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    or-int/lit8 v0, v0, 0x20

    .line 1638
    :cond_4f
    const-string/jumbo v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    or-int/lit8 v0, v0, 0x40

    .line 1639
    :cond_5a
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    or-int/lit16 v0, v0, 0x80

    .line 1640
    :cond_65
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    or-int/lit16 v0, v0, 0x100

    .line 1641
    :cond_70
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    or-int/lit16 v0, v0, 0x200

    .line 1642
    :cond_7b
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    or-int/lit16 v0, v0, 0x400

    .line 1643
    :cond_86
    const-string/jumbo v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1644
    :cond_93
    const-string/jumbo v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_6

    .line 1652
    :cond_a2
    return v2
.end method

.method private ensureInHandlerThread()V
    .registers 3

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 2830
    return-void

    .line 2832
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .registers 11
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 2751
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->ensureInHandlerThread()V

    .line 2752
    if-nez p1, :cond_8

    .line 2753
    return v8

    .line 2756
    :cond_8
    const-string/jumbo v0, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2757
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2759
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_14
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2760
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2761
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "protocol"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2764
    const-string/jumbo v5, "name ASC"

    .line 2763
    const/4 v4, 0x0

    .line 2759
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2766
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_44

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2767
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3d} :catch_64
    .catchall {:try_start_14 .. :try_end_3d} :catchall_85

    move-result v0

    .line 2774
    if-eqz v6, :cond_43

    .line 2775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2767
    :cond_43
    return v0

    .line 2769
    :cond_44
    :try_start_44
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No entry found in query for APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5e} :catch_64
    .catchall {:try_start_44 .. :try_end_5e} :catchall_85

    .line 2774
    if-eqz v6, :cond_63

    .line 2775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2779
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_63
    :goto_63
    return v8

    .line 2771
    :catch_64
    move-exception v7

    .line 2772
    .local v7, "e":Ljava/lang/Exception;
    :try_start_65
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error encountered on APN query for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_85

    .line 2774
    if-eqz v6, :cond_63

    .line 2775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_63

    .line 2773
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_85
    move-exception v0

    .line 2774
    if-eqz v6, :cond_8b

    .line 2775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2773
    :cond_8b
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 2255
    sparse-switch p1, :sswitch_data_12

    .line 2269
    const/4 v0, -0x1

    return v0

    .line 2257
    :sswitch_5
    const/4 v0, 0x0

    return v0

    .line 2259
    :sswitch_7
    const/4 v0, 0x5

    return v0

    .line 2261
    :sswitch_9
    const/4 v0, 0x2

    return v0

    .line 2263
    :sswitch_b
    const/4 v0, 0x4

    return v0

    .line 2265
    :sswitch_d
    const/4 v0, 0x1

    return v0

    .line 2267
    :sswitch_f
    const/4 v0, 0x3

    return v0

    .line 2255
    nop

    :sswitch_data_12
    .sparse-switch
        -0x95 -> :sswitch_7
        -0x67 -> :sswitch_b
        -0x66 -> :sswitch_f
        -0x65 -> :sswitch_9
        0x0 -> :sswitch_5
        0x64 -> :sswitch_d
    .end sparse-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2725
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2726
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2728
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2730
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "apn"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2733
    const-string/jumbo v5, "name ASC"

    .line 2731
    const/4 v3, 0x0

    .line 2732
    const/4 v4, 0x0

    .line 2728
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2734
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2735
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_43
    .catchall {:try_start_9 .. :try_end_2d} :catchall_53

    move-result-object v0

    .line 2742
    if-eqz v6, :cond_33

    .line 2743
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2735
    :cond_33
    return-object v0

    .line 2737
    :cond_34
    :try_start_34
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "No APN found to select."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_43
    .catchall {:try_start_34 .. :try_end_3d} :catchall_53

    .line 2742
    if-eqz v6, :cond_42

    .line 2743
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2747
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_42
    :goto_42
    return-object v8

    .line 2739
    :catch_43
    move-exception v7

    .line 2740
    .local v7, "e":Ljava/lang/Exception;
    :try_start_44
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "Error encountered on selecting the APN."

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_53

    .line 2742
    if-eqz v6, :cond_42

    .line 2743
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 2741
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_53
    move-exception v0

    .line 2742
    if-eqz v6, :cond_59

    .line 2743
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2741
    :cond_59
    throw v0
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .registers 12
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1300
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_f

    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v4, "Enter getSuplMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_f
    if-eqz p2, :cond_77

    .line 1303
    const-string/jumbo v3, "SUPL_MODE"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1304
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1305
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1307
    :try_start_1f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_22} :catch_4d

    move-result v2

    .line 1314
    :cond_23
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_41

    const-string/jumbo v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "suplMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_41
    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_69

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_69

    .line 1319
    const/4 v3, 0x1

    return v3

    .line 1308
    :catch_4d
    move-exception v0

    .line 1309
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to parse SUPL_MODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return v6

    .line 1324
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_69
    if-eqz p3, :cond_77

    .line 1325
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v3

    .line 1324
    if-eqz v3, :cond_77

    .line 1326
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_77

    .line 1327
    return v7

    .line 1330
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_77
    return v6
.end method

.method private handleDisable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1387
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_e
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1391
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating(Z)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1393
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1394
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    if-eqz v0, :cond_35

    .line 1395
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->cancelAlarm()V

    .line 1397
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->stop()V

    .line 1405
    :cond_35
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    .line 1407
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSetLockAllowed:Z

    if-eqz v0, :cond_3e

    .line 1408
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEngineLock()V

    .line 1415
    :cond_3e
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1416
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1386
    return-void
.end method

.method private handleDownloadXtraData()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1208
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    if-ne v0, v1, :cond_6

    .line 1210
    return-void

    .line 1212
    :cond_6
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1214
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1215
    return-void

    .line 1217
    :cond_10
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1220
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1221
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "WakeLock acquired by handleDownloadXtraData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$13;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$13;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1207
    return-void
.end method

.method private handleEnable()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1334
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInitialized:Z

    if-eqz v0, :cond_67

    .line 1338
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    const/4 v1, 0x1

    :try_start_16
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_64

    monitor-exit v0

    .line 1344
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_xtra()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    .line 1346
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_3f

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSupportsXtra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_3f
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-eqz v0, :cond_52

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1352
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    if-nez v0, :cond_52

    .line 1353
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1357
    :cond_52
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSetLockAllowed:Z

    if-eqz v0, :cond_59

    .line 1358
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEngineLock()V

    .line 1361
    :cond_59
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1362
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1333
    :goto_63
    return-void

    .line 1338
    :catchall_64
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1364
    :cond_67
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1365
    const/4 v1, 0x0

    :try_start_6b
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_78

    monitor-exit v0

    .line 1367
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 1364
    :catchall_78
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleInjectNtpTime()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1136
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    if-ne v0, v1, :cond_6

    .line 1138
    return-void

    .line 1140
    :cond_6
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    .line 1143
    return-void

    .line 1145
    :cond_10
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    .line 1148
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1149
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "WakeLock acquired by handleInjectNtpTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$12;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$12;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1135
    return-void
.end method

.method private handleMotSlpcBooted()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 670
    const-string/jumbo v1, "persist.mot.gps.smart_battery"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 671
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_21

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "MovementMonitor disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_21
    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    .line 668
    :cond_23
    :goto_23
    return-void

    .line 674
    :cond_24
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 675
    const-string/jumbo v2, "modality"

    .line 674
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/slpc/ModalityManager;

    .line 676
    .local v0, "mm":Lcom/motorola/slpc/ModalityManager;
    if-nez v0, :cond_3d

    .line 677
    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "Modality service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    goto :goto_23

    .line 680
    :cond_3d
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/motorola/slpc/ModalityManager;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    .line 681
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "MovementMonitor created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private handleMotoInitialize()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x1388

    .line 961
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInitialized:Z

    if-nez v0, :cond_17

    .line 962
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInitialized:Z

    .line 963
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInitialized:Z

    if-eqz v0, :cond_18

    .line 964
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mInitializeNvItems:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 960
    :cond_17
    :goto_17
    return-void

    .line 966
    :cond_18
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "Failed to initialize gps native layer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInitializeRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mInitializeRetry:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_17

    .line 968
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_17
.end method

.method private handleReleaseSuplConnection(I)V
    .registers 8
    .param p1, "agpsDataConnStatus"    # I

    .prologue
    const/4 v5, 0x0

    .line 1109
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 1111
    const-string/jumbo v1, "releaseSuplConnection, state=%s, status=%s"

    .line 1110
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1110
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    .end local v0    # "message":Ljava/lang/String;
    :cond_22
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-nez v1, :cond_27

    .line 1118
    return-void

    .line 1120
    :cond_27
    iput v5, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1122
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1123
    packed-switch p1, :pswitch_data_56

    .line 1131
    :pswitch_33
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid status to release SUPL connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :goto_4d
    return-void

    .line 1125
    :pswitch_4e
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_4d

    .line 1128
    :pswitch_52
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_closed()V

    goto :goto_4d

    .line 1123
    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_52
        :pswitch_33
        :pswitch_33
        :pswitch_4e
    .end packed-switch
.end method

.method private handleRequestSuplConnection(Ljava/net/InetAddress;)V
    .registers 10
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1084
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_1e

    .line 1086
    const-string/jumbo v3, "requestSuplConnection, state=%s, address=%s"

    .line 1085
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1087
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1088
    aput-object p1, v4, v7

    .line 1085
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v3, "GnssLocationProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    .end local v0    # "message":Ljava/lang/String;
    :cond_1e
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v3, :cond_23

    .line 1093
    return-void

    .line 1095
    :cond_23
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1096
    iput v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1098
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1099
    .local v2, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v2, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1100
    invoke-virtual {v2, v7}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1101
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1102
    .local v1, "request":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1104
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1105
    const v5, 0x5b8d80

    .line 1102
    invoke-virtual {v3, v1, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 1083
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1455
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1456
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 1453
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1250
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1251
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1252
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    move-object v1, p0

    .line 1251
    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_inject_location(DDF)V

    .line 1249
    :cond_16
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 1013
    .local v10, "info":Landroid/net/NetworkInfo;
    if-nez v10, :cond_9

    .line 1014
    return-void

    .line 1017
    :cond_9
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1018
    .local v1, "isConnected":Z
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_3b

    .line 1020
    const-string/jumbo v0, "UpdateNetworkState, state=%s, connected=%s, info=%s, capabilities=%S"

    .line 1019
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 1021
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 1022
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1023
    const/4 v3, 0x2

    aput-object v10, v2, v3

    .line 1024
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 1019
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1025
    .local v11, "message":Ljava/lang/String;
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .end local v11    # "message":Ljava/lang/String;
    :cond_3b
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1029
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v9

    .line 1030
    .local v9, "dataEnabled":Z
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_bb

    move v4, v9

    .line 1031
    :goto_50
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 1032
    .local v6, "defaultApn":Ljava/lang/String;
    if-nez v6, :cond_59

    .line 1033
    const-string/jumbo v6, "dummy-apn"

    .line 1038
    :cond_59
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1039
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    .line 1041
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 1036
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 1047
    .end local v6    # "defaultApn":Ljava/lang/String;
    .end local v9    # "dataEnabled":Z
    :cond_69
    :goto_69
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a4

    .line 1048
    if-eqz v1, :cond_cb

    .line 1049
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    .line 1050
    .local v8, "apnName":Ljava/lang/String;
    if-nez v8, :cond_79

    .line 1053
    const-string/jumbo v8, "dummy-apn"

    .line 1055
    :cond_79
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->getApnIpType(Ljava/lang/String;)I

    move-result v7

    .line 1056
    .local v7, "apnIpType":I
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->setRouting()V

    .line 1057
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_9e

    .line 1059
    const-string/jumbo v0, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    .line 1058
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1060
    const/4 v3, 0x0

    aput-object v8, v2, v3

    .line 1061
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1058
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1062
    .restart local v11    # "message":Ljava/lang/String;
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .end local v11    # "message":Ljava/lang/String;
    :cond_9e
    invoke-direct {p0, v8, v7}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 1065
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1072
    .end local v7    # "apnIpType":I
    .end local v8    # "apnName":Ljava/lang/String;
    :cond_a4
    :goto_a4
    if-eqz v1, :cond_ba

    .line 1074
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    if-nez v0, :cond_b0

    .line 1075
    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1077
    :cond_b0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    if-nez v0, :cond_ba

    .line 1078
    const/4 v0, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1010
    :cond_ba
    return-void

    .line 1030
    .restart local v9    # "dataEnabled":Z
    :cond_bb
    const/4 v4, 0x0

    .local v4, "networkAvailable":Z
    goto :goto_50

    .line 1043
    .end local v4    # "networkAvailable":Z
    .end local v9    # "dataEnabled":Z
    :cond_bd
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_69

    .line 1044
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 1067
    :cond_cb
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    goto :goto_a4
.end method

.method private hasCapability(I)Z
    .registers 4
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x0

    .line 1814
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private declared-synchronized hibernate(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "alarmOffset"    # I
    .param p2, "alarmIntent"    # Landroid/app/PendingIntent;

    .prologue
    monitor-enter p0

    .line 1783
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 1782
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hibernate_Locked(ILandroid/app/PendingIntent;)V
    .registers 10
    .param p1, "alarmOffset"    # I
    .param p2, "alarmIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x1

    .line 1787
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_1f

    const-string/jumbo v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hibernate alarmOffset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :cond_1f
    if-eqz p2, :cond_25

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    if-ne p2, v3, :cond_5a

    .line 1790
    .local v2, "silent":Z
    :cond_25
    :goto_25
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating_Locked(Z)V

    .line 1791
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1792
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1793
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    if-eqz v3, :cond_3f

    .line 1794
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->cancelAlarm()V

    .line 1797
    :cond_3f
    if-eqz p2, :cond_4e

    .line 1798
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    if-ne p2, v3, :cond_5c

    .line 1799
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    if-eqz v3, :cond_4e

    .line 1800
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v3, p1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->setAlarm(I)V

    .line 1807
    :cond_4e
    :goto_4e
    if-nez v2, :cond_59

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    if-eqz v3, :cond_59

    .line 1808
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->updateHibernate()V

    .line 1786
    :cond_59
    return-void

    .line 1789
    .end local v2    # "silent":Z
    :cond_5a
    const/4 v2, 0x0

    goto :goto_25

    .line 1803
    .restart local v2    # "silent":Z
    :cond_5c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1804
    .local v0, "now":J
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    int-to-long v4, p1

    add-long/2addr v4, v0

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_4e
.end method

.method private isDataNetworkConnected()Z
    .registers 3

    .prologue
    .line 2821
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2822
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static isSupported()Z
    .registers 1

    .prologue
    .line 730
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 832
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_18

    .line 833
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 835
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 836
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_b
    invoke-virtual {p2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_35

    .line 838
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 845
    const/4 v4, 0x1

    return v4

    .line 837
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_13
    move-exception v4

    .line 838
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_14
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 837
    throw v4
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_18

    .line 841
    .end local v1    # "file":Ljava/io/File;
    :catch_18
    move-exception v0

    .line 842
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not open GPS configuration file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v4, 0x0

    return v4

    .line 837
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_35
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    goto :goto_14
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v4, 0x0

    .line 815
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 816
    const v5, 0x1070041

    .line 815
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "configValues":[Ljava/lang/String;
    array-length v5, v0

    move v3, v4

    :goto_e
    if-ge v3, v5, :cond_69

    aget-object v1, v0, v3

    .line 818
    .local v1, "item":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_30

    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GpsParamsResource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_30
    const-string/jumbo v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, "split":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4e

    .line 822
    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 817
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 824
    :cond_4e
    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 814
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    :cond_69
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private static native native_configuration_update(Ljava/lang/String;)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_configuration_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_engine_lock(I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_start_measurement_collection()Z
.end method

.method private native native_start_navigation_message_collection()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_stop_measurement_collection()Z
.end method

.method private native native_stop_navigation_message_collection()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private provideStatus(ZZ)V
    .registers 6
    .param p1, "navigating"    # Z
    .param p2, "skipIntent"    # Z

    .prologue
    .line 2007
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V

    .line 2009
    if-nez p2, :cond_1e

    .line 2011
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2012
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "enabled"

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2013
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2006
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method private releaseSuplConnection(I)V
    .registers 4
    .param p1, "connStatus"    # I

    .prologue
    .line 2139
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2138
    return-void
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v9, 0x1

    .line 734
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_23

    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Reset GPS properties, previous size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_23
    iget-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsConfFromSim:Z

    if-eqz v10, :cond_2a

    .line 739
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 743
    :cond_2a
    const/4 v5, 0x0

    .line 744
    .local v5, "isPropertiesLoadedFromFile":Z
    const-string/jumbo v10, "ro.hardware.gps"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 745
    .local v3, "gpsHardware":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_57

    .line 747
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/etc/gps."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".conf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 749
    .local v7, "propFilename":Ljava/lang/String;
    invoke-direct {p0, v7, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v5

    .line 751
    .end local v5    # "isPropertiesLoadedFromFile":Z
    .end local v7    # "propFilename":Ljava/lang/String;
    :cond_57
    if-nez v5, :cond_5f

    .line 752
    const-string/jumbo v10, "/etc/gps.conf"

    invoke-direct {p0, v10, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 754
    :cond_5f
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_81

    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "GPS properties reloaded, size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_81
    const-string/jumbo v10, "SUPL_HOST"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 758
    const-string/jumbo v11, "SUPL_PORT"

    invoke-virtual {p2, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 757
    invoke-direct {p0, v10, v11}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string/jumbo v10, "C2K_HOST"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 760
    const-string/jumbo v10, "C2K_PORT"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 761
    .local v6, "portString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v10, :cond_ae

    if-eqz v6, :cond_ae

    .line 763
    :try_start_a8
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_ae} :catch_12d

    .line 770
    :cond_ae
    :goto_ae
    iget-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsConfFromSim:Z

    if-eqz v10, :cond_155

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_gnss_configuration_supported()Z

    move-result v10

    if-eqz v10, :cond_155

    .line 774
    :try_start_b8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x1000

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 775
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x0

    invoke-virtual {p2, v0, v10}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->native_configuration_update(Ljava/lang/String;)V

    .line 777
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_ec

    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "final config = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ec} :catch_14a

    .line 787
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_ec
    :goto_ec
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string/jumbo v11, "SUPL_ES"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 788
    .local v8, "suplESProperty":Ljava/lang/String;
    if-eqz v8, :cond_ff

    .line 790
    :try_start_f7
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_163

    :goto_fd
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z
    :try_end_ff
    .catch Ljava/lang/NumberFormatException; {:try_start_f7 .. :try_end_ff} :catch_165

    .line 797
    :cond_ff
    :goto_ff
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string/jumbo v10, "GPS_LOCK"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, "gpsLockProperty":Ljava/lang/String;
    if-eqz v4, :cond_19e

    .line 800
    :try_start_10a
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsLock:I

    .line 801
    const-string/jumbo v9, "GnssLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "gpsLockProperty - GPS_LOCK = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsLock:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catch Ljava/lang/NumberFormatException; {:try_start_10a .. :try_end_12c} :catch_182

    .line 733
    :goto_12c
    return-void

    .line 764
    .end local v4    # "gpsLockProperty":Ljava/lang/String;
    .end local v8    # "suplESProperty":Ljava/lang/String;
    :catch_12d
    move-exception v1

    .line 765
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to parse C2K_PORT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 778
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_14a
    move-exception v2

    .line 779
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v10, "GnssLocationProvider"

    const-string/jumbo v11, "failed to dump properties contents"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    .line 781
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_155
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_ec

    .line 782
    const-string/jumbo v10, "GnssLocationProvider"

    const-string/jumbo v11, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    .line 790
    .restart local v8    # "suplESProperty":Ljava/lang/String;
    :cond_163
    const/4 v9, 0x0

    goto :goto_fd

    .line 791
    :catch_165
    move-exception v1

    .line 792
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "GnssLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to parse SUPL_ES: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ff

    .line 802
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gpsLockProperty":Ljava/lang/String;
    :catch_182
    move-exception v1

    .line 803
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "GnssLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to parse gpsLockPropery: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 807
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_19e
    const-string/jumbo v9, "GnssLocationProvider"

    const-string/jumbo v10, "gpsLockProperty is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c
.end method

.method private reportAGpsStatus(II[B)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .prologue
    .line 2105
    packed-switch p2, :pswitch_data_d6

    .line 2134
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received Unknown AGPS status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_21
    :goto_21
    return-void

    .line 2107
    :pswitch_22
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :cond_2f
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received SUPL IP addr[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const/4 v0, 0x0

    .line 2110
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    if-eqz p3, :cond_72

    .line 2112
    :try_start_50
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 2113
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_72

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IP address converted to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/net/UnknownHostException; {:try_start_50 .. :try_end_72} :catch_79

    .line 2118
    .end local v0    # "connectionIpAddress":Ljava/net/InetAddress;
    :cond_72
    :goto_72
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_21

    .line 2114
    :catch_79
    move-exception v1

    .line 2115
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    .line 2121
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :pswitch_95
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_a2

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :cond_a2
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    goto/16 :goto_21

    .line 2125
    :pswitch_a8
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 2128
    :pswitch_b7
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 2131
    :pswitch_c6
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 2105
    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_22
        :pswitch_95
        :pswitch_a8
        :pswitch_b7
        :pswitch_c6
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2335
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2337
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 2333
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2355
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2357
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 2353
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2345
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2347
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 2343
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2365
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2367
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 2363
    return-void
.end method

.method private reportGeofenceStatus(IIDDDFFFJ)V
    .registers 31
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 2307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v2, :cond_12

    .line 2308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_12
    move-object/from16 v2, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 2310
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/GnssLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v15

    .line 2319
    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x1

    .line 2320
    .local v16, "monitorStatus":I
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_31

    .line 2321
    const/16 v16, 0x0

    .line 2323
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2327
    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 2324
    const/4 v4, 0x0

    .line 2323
    move/from16 v0, v16

    invoke-virtual {v2, v4, v0, v15, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 2306
    return-void
.end method

.method private reportGeofenceTransition(IIDDDFFFJIJ)V
    .registers 30
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2281
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_c
    move-object v0, p0

    move v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    .line 2283
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/GnssLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v2

    .line 2292
    .local v2, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2298
    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 2297
    const/4 v6, 0x0

    move v1, p1

    move/from16 v3, p14

    move-wide/from16 v4, p15

    .line 2292
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 2279
    return-void
.end method

.method private reportLocation(IDDDFFFJ)V
    .registers 21
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1824
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_b6

    const-string/jumbo v5, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportLocation lat: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1825
    const-string/jumbo v6, " long: "

    .line 1824
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1826
    const-string/jumbo v6, " accuracy: "

    .line 1824
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1827
    const-string/jumbo v6, " bearing: "

    .line 1824
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1828
    const-string/jumbo v6, " speed: "

    .line 1824
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1829
    const-string/jumbo v6, " altitude: "

    .line 1824
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1830
    const-string/jumbo v6, " timestamp: "

    .line 1824
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1831
    const-string/jumbo v6, " accuracy_valid: "

    .line 1824
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1831
    and-int/lit8 v4, p1, 0x10

    const/16 v7, 0x10

    if-ne v4, v7, :cond_1c4

    const-string/jumbo v4, "yes"

    .line 1824
    :goto_71
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1832
    const-string/jumbo v6, " bearing_valid: "

    .line 1824
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1832
    and-int/lit8 v4, p1, 0x8

    const/16 v7, 0x8

    if-ne v4, v7, :cond_1c9

    const-string/jumbo v4, "yes"

    .line 1824
    :goto_85
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1833
    const-string/jumbo v6, " speed_valid: "

    .line 1824
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1833
    and-int/lit8 v4, p1, 0x4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1ce

    const-string/jumbo v4, "yes"

    .line 1824
    :goto_98
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1834
    const-string/jumbo v6, " alt_valid: "

    .line 1824
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1834
    and-int/lit8 v4, p1, 0x2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1d3

    const-string/jumbo v4, "yes"

    .line 1824
    :goto_ab
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_b6
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v5

    .line 1838
    :try_start_b9
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    .line 1839
    and-int/lit8 v4, p1, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_da

    .line 1840
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1841
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1842
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1845
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1847
    :cond_da
    and-int/lit8 v4, p1, 0x2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1d8

    .line 1848
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1852
    :goto_e4
    and-int/lit8 v4, p1, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1e2

    .line 1853
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1857
    :goto_f0
    and-int/lit8 v4, p1, 0x8

    const/16 v6, 0x8

    if-ne v4, v6, :cond_1e9

    .line 1858
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1862
    :goto_fd
    and-int/lit8 v4, p1, 0x10

    const/16 v6, 0x10

    if-ne v4, v6, :cond_1f0

    .line 1863
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1867
    :goto_10a
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_111
    .catchall {:try_start_b9 .. :try_end_111} :catchall_1df

    .line 1870
    :try_start_111
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_119} :catch_1f7
    .catchall {:try_start_111 .. :try_end_119} :catchall_1df

    :goto_119
    monitor-exit v5

    .line 1876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1878
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v4, :cond_158

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_158

    .line 1879
    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    iget-wide v6, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1880
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_151

    const-string/jumbo v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TTFF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_151
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V

    .line 1887
    :cond_158
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    if-eqz v4, :cond_203

    .line 1888
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating(Z)V

    .line 1899
    :cond_160
    :goto_160
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v4, :cond_19e

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eqz v4, :cond_19e

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_19e

    .line 1903
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_182

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v5, 0xea60

    if-ge v4, v5, :cond_182

    .line 1904
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1908
    :cond_182
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1909
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enabled"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1910
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1911
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    const/4 v5, 0x2

    invoke-direct {p0, v5, v4}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1915
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_19e
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_1c3

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v4, :cond_1c3

    .line 1916
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/16 v5, 0x2710

    if-le v4, v5, :cond_1c3

    .line 1917
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_1bc

    const-string/jumbo v4, "GnssLocationProvider"

    const-string/jumbo v5, "got fix, hibernating"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :cond_1bc
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GnssLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V

    .line 1822
    :cond_1c3
    return-void

    .line 1831
    :cond_1c4
    const-string/jumbo v4, "no"

    goto/16 :goto_71

    .line 1832
    :cond_1c9
    const-string/jumbo v4, "no"

    goto/16 :goto_85

    .line 1833
    :cond_1ce
    const-string/jumbo v4, "no"

    goto/16 :goto_98

    .line 1834
    :cond_1d3
    const-string/jumbo v4, "no"

    goto/16 :goto_ab

    .line 1850
    :cond_1d8
    :try_start_1d8
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAltitude()V
    :try_end_1dd
    .catchall {:try_start_1d8 .. :try_end_1dd} :catchall_1df

    goto/16 :goto_e4

    .line 1837
    :catchall_1df
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1855
    :cond_1e2
    :try_start_1e2
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_f0

    .line 1860
    :cond_1e9
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_fd

    .line 1865
    :cond_1f0
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_10a

    .line 1871
    :catch_1f7
    move-exception v2

    .line 1872
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "GnssLocationProvider"

    const-string/jumbo v6, "RemoteException calling reportLocation"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_201
    .catchall {:try_start_1e2 .. :try_end_201} :catchall_1df

    goto/16 :goto_119

    .line 1892
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_203
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v4, :cond_160

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    if-eqz v4, :cond_160

    .line 1894
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->monitor(Z)V

    goto/16 :goto_160
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V

    .line 2154
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V

    .line 2161
    return-void
.end method

.method private reportNmea(J)V
    .registers 8
    .param p1, "timestamp"    # J

    .prologue
    .line 2146
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 2147
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 2148
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 2145
    return-void
.end method

.method private reportStatus(I)V
    .registers 16
    .param p1, "status"    # I

    .prologue
    const-wide/16 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1928
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_22

    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reportStatus status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_22
    const-wide/16 v0, 0x0

    .line 1935
    .local v0, "gpsUptime":J
    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1936
    .local v5, "wasNavigating":Z
    const/4 v4, 0x0

    .line 1937
    .local v4, "skipStatus":Z
    const/4 v3, 0x0

    .line 1938
    .local v3, "skipIntent":Z
    packed-switch p1, :pswitch_data_14e

    .line 1995
    :cond_2b
    :goto_2b
    iget-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eq v5, v6, :cond_36

    .line 1997
    if-nez v4, :cond_36

    .line 1998
    iget-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-direct {p0, v6, v3}, Lcom/android/server/location/GnssLocationProvider;->provideStatus(ZZ)V

    .line 1926
    :cond_36
    return-void

    .line 1940
    :pswitch_37
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_44

    const-string/jumbo v6, "GnssLocationProvider"

    const-string/jumbo v7, "GPS_STATUS_SESSION_BEGIN"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_44
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1942
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1943
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_68

    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSilentCnt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_68
    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    if-lez v6, :cond_2b

    .line 1945
    const/4 v4, 0x1

    .line 1946
    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    goto :goto_2b

    .line 1950
    :pswitch_74
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_81

    const-string/jumbo v6, "GnssLocationProvider"

    const-string/jumbo v7, "GPS_STATUS_SESSION_END"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_81
    iput-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1952
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_a3

    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSilentCnt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_a3
    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    if-lez v6, :cond_2b

    .line 1954
    const/4 v4, 0x1

    .line 1955
    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    goto/16 :goto_2b

    .line 1959
    :pswitch_b0
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_bd

    const-string/jumbo v6, "GnssLocationProvider"

    const-string/jumbo v7, "GPS_STATUS_ENGINE_ON"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_bd
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsStartTime:J

    .line 1963
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1965
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOnStatus:Z

    goto/16 :goto_2b

    .line 1969
    :pswitch_c9
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_d6

    const-string/jumbo v6, "GnssLocationProvider"

    const-string/jumbo v7, "GPS_STATUS_ENGINE_OFF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_d6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsStopTime:J

    .line 1972
    iget-wide v6, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsStopTime:J

    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsStartTime:J

    sub-long v0, v6, v8

    .line 1973
    cmp-long v6, v0, v12

    if-lez v6, :cond_141

    iget-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOnStatus:Z

    if-eqz v6, :cond_141

    .line 1974
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.motorola.location.instrumentation"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1975
    .local v2, "instrumentationIntent":Landroid/content/Intent;
    const-string/jumbo v6, "com.motorola.location.insttype"

    const-string/jumbo v7, "gpsUptime"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1976
    const-string/jumbo v6, "com.motorola.location.instincvalue"

    invoke-virtual {v2, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1977
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.motorola.android.permission.LOC_INST_RECEIVE"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1978
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_141

    .line 1979
    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Sending gpsUptime Intent - mGpsStopTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1980
    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsStopTime:J

    .line 1979
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1980
    const-string/jumbo v8, " mGpsStartTime = "

    .line 1979
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1980
    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsStartTime:J

    .line 1979
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1981
    const-string/jumbo v8, " gpsUptime = "

    .line 1979
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    .end local v2    # "instrumentationIntent":Landroid/content/Intent;
    :cond_141
    iput-wide v12, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsStopTime:J

    .line 1985
    iput-wide v12, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsStartTime:J

    .line 1987
    iput-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1989
    iput-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOnStatus:Z

    .line 1991
    iput-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto/16 :goto_2b

    .line 1938
    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_74
        :pswitch_b0
        :pswitch_c9
    .end packed-switch
.end method

.method private reportSvStatus()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2024
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSaving:Z

    if-eqz v0, :cond_14

    .line 2025
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "ignoring reportSvStatus in saving mode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :cond_13
    return-void

    .line 2030
    :cond_14
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->native_read_sv_status([I[F[F[F)I

    move-result v1

    .line 2031
    .local v1, "svCount":I
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 2033
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    .line 2034
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    .line 2035
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    .line 2036
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    .line 2031
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F)V

    .line 2039
    const/4 v9, 0x0

    .line 2042
    .local v9, "usedInFixCount":I
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1ed

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastSvTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1ed

    .line 2044
    const-string/jumbo v0, "PRN "

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvsString:Ljava/lang/String;

    .line 2045
    const-string/jumbo v0, "SNR "

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSnrsString:Ljava/lang/String;

    .line 2046
    const-string/jumbo v0, "ELE "

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mElevString:Ljava/lang/String;

    .line 2047
    const-string/jumbo v0, "AZM "

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAzimString:Ljava/lang/String;

    .line 2048
    const-string/jumbo v0, "FLG "

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFlagString:Ljava/lang/String;

    .line 2050
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_59
    if-ge v6, v1, :cond_1a0

    .line 2051
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_65

    .line 2052
    add-int/lit8 v9, v9, 0x1

    .line 2055
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvsString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%3d"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v4, v4, v6

    shr-int/lit8 v4, v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvsString:Ljava/lang/String;

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSnrsString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%3.0f"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSnrsString:Ljava/lang/String;

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mElevString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%3.0f"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mElevString:Ljava/lang/String;

    .line 2058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAzimString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%3.0f"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAzimString:Ljava/lang/String;

    .line 2060
    const-string/jumbo v8, ""

    .line 2061
    .local v8, "tmpStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_194

    .line 2062
    const-string/jumbo v8, " "

    .line 2063
    :goto_131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_198

    .line 2064
    const-string/jumbo v0, " "

    .line 2063
    :goto_145
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_19c

    .line 2066
    const-string/jumbo v0, " "

    .line 2065
    :goto_161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFlagString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%s"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v8, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFlagString:Ljava/lang/String;

    .line 2050
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_59

    .line 2062
    :cond_194
    const-string/jumbo v8, "E"

    goto :goto_131

    .line 2064
    :cond_198
    const-string/jumbo v0, "A"

    goto :goto_145

    .line 2066
    :cond_19c
    const-string/jumbo v0, "U"

    goto :goto_161

    .line 2070
    .end local v8    # "tmpStr":Ljava/lang/String;
    :cond_1a0
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SV count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Used In Fix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const-string/jumbo v0, "GnssLocationProvider"

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvsString:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const-string/jumbo v0, "GnssLocationProvider"

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSnrsString:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    const-string/jumbo v0, "GnssLocationProvider"

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mElevString:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const-string/jumbo v0, "GnssLocationProvider"

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAzimString:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    const-string/jumbo v0, "GnssLocationProvider"

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFlagString:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    .end local v6    # "i":I
    :cond_1ed
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastSvTime:J

    .line 2082
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    invoke-direct {p0, v0, v9}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 2084
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_253

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_253

    iget-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_253

    .line 2085
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_253

    .line 2087
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2088
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "enabled"

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2089
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2090
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    invoke-direct {p0, v11, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 2092
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    if-eqz v0, :cond_253

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_253

    .line 2093
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_249

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "reportSvStatus(), calling updateNoFix()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_249
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->stop()V

    .line 2095
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->updateNoFix()V

    .line 2022
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_253
    return-void
.end method

.method private requestRefLocation(I)V
    .registers 12
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x3

    .line 2505
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2504
    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2506
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 2507
    .local v9, "phoneType":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_74

    .line 2508
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 2509
    .local v6, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_6a

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 2510
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_6a

    .line 2512
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2513
    .local v2, "mcc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2514
    .local v3, "mnc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 2515
    .local v7, "networkType":I
    if-eq v7, v5, :cond_4e

    .line 2516
    const/16 v0, 0x8

    if-ne v7, v0, :cond_5c

    .line 2520
    :cond_4e
    const/4 v1, 0x2

    .line 2525
    .local v1, "type":I
    :goto_4f
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    .line 2524
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2503
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "networkType":I
    :cond_5b
    :goto_5b
    return-void

    .line 2517
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    .restart local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7    # "networkType":I
    :cond_5c
    const/16 v0, 0x9

    if-eq v7, v0, :cond_4e

    .line 2518
    const/16 v0, 0xa

    if-eq v7, v0, :cond_4e

    .line 2519
    const/16 v0, 0xf

    if-eq v7, v0, :cond_4e

    .line 2522
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_4f

    .line 2527
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v7    # "networkType":I
    :cond_6a
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 2529
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_74
    const/4 v0, 0x2

    if-ne v9, v0, :cond_5b

    .line 2530
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method private requestSetID(I)V
    .registers 8
    .param p1, "flags"    # I

    .prologue
    .line 2464
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2463
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2465
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2466
    .local v3, "type":I
    const-string/jumbo v0, ""

    .line 2468
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_21

    .line 2469
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2470
    .local v1, "data_temp":Ljava/lang/String;
    if-nez v1, :cond_1e

    .line 2488
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_1a
    :goto_1a
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2462
    return-void

    .line 2474
    .restart local v1    # "data_temp":Ljava/lang/String;
    :cond_1e
    move-object v0, v1

    .line 2475
    const/4 v3, 0x1

    goto :goto_1a

    .line 2478
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_21
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    .line 2479
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2480
    .restart local v1    # "data_temp":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 2484
    move-object v0, v1

    .line 2485
    const/4 v3, 0x2

    goto :goto_1a
.end method

.method private requestUtcTime()V
    .registers 4

    .prologue
    .line 2495
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_d
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2494
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 7
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2539
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WakeLock acquired by sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2534
    return-void
.end method

.method private setEngineCapabilities(I)V
    .registers 7
    .param p1, "capabilities"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2169
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    .line 2171
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2172
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mOnDemandTimeInjection:Z

    .line 2173
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 2176
    :cond_11
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 2177
    and-int/lit8 v0, p1, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_29

    move v0, v1

    .line 2176
    :goto_1a
    invoke-virtual {v3, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 2178
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 2179
    and-int/lit16 v3, p1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2b

    .line 2178
    :goto_25
    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 2168
    return-void

    :cond_29
    move v0, v2

    .line 2177
    goto :goto_1a

    :cond_2b
    move v1, v2

    .line 2179
    goto :goto_25
.end method

.method private setGnssYearOfHardware(I)V
    .registers 5
    .param p1, "yearOfHardware"    # I

    .prologue
    .line 2186
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGnssYearOfHardware called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_1e
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    .line 2185
    return-void
.end method

.method private setRouting()V
    .registers 5

    .prologue
    .line 2800
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v1, :cond_5

    .line 2801
    return-void

    .line 2805
    :cond_5
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 2807
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 2806
    const/4 v3, 0x3

    .line 2805
    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2809
    .local v0, "result":Z
    if-nez v0, :cond_2d

    .line 2810
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    :cond_2c
    :goto_2c
    return-void

    .line 2811
    :cond_2d
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_2c

    .line 2812
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .prologue
    .line 1272
    if-eqz p1, :cond_4

    .line 1273
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1275
    :cond_4
    if-eqz p2, :cond_c

    .line 1277
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c} :catch_24

    .line 1282
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 1283
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    if-lez v1, :cond_23

    .line 1284
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const v2, 0xffff

    if-gt v1, v2, :cond_23

    .line 1285
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1271
    :cond_23
    return-void

    .line 1278
    :catch_24
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private declared-synchronized startNavigating(ZZ)V
    .registers 4
    .param p1, "singleShot"    # Z
    .param p2, "silent"    # Z

    .prologue
    monitor-enter p0

    .line 1657
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->startNavigating_Locked(ZZ)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 1656
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startNavigating_Locked(ZZ)V
    .registers 14
    .param p1, "singleShot"    # Z
    .param p2, "silent"    # Z

    .prologue
    const v10, 0xea60

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1660
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSaving:Z

    if-eqz v0, :cond_e

    .line 1659
    :cond_d
    :goto_d
    return-void

    .line 1662
    :cond_e
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_37

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNavigating singleShot: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "s:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_37
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1665
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1666
    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1667
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1668
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1671
    const/4 v6, 0x1

    .line 1672
    .local v6, "agpsEnabled":Z
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v6, p1}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1675
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_72

    .line 1678
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    packed-switch v0, :pswitch_data_124

    .line 1689
    const-string/jumbo v7, "unknown"

    .line 1692
    .local v7, "mode":Ljava/lang/String;
    :goto_58
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting position_mode to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    .end local v7    # "mode":Ljava/lang/String;
    :cond_72
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1696
    .local v3, "interval":I
    :goto_7a
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 1698
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1699
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    return-void

    .line 1680
    .end local v3    # "interval":I
    :pswitch_91
    const-string/jumbo v7, "standalone"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_58

    .line 1683
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_95
    const-string/jumbo v7, "MS_ASSISTED"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_58

    .line 1686
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_99
    const-string/jumbo v7, "MS_BASED"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_58

    .line 1695
    .end local v7    # "mode":Ljava/lang/String;
    :cond_9d
    const/16 v3, 0x3e8

    .restart local v3    # "interval":I
    goto :goto_7a

    .line 1703
    :cond_a0
    if-eqz p2, :cond_da

    .line 1704
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    .line 1705
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c8

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNavigating scount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_c8
    :goto_c8
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 1711
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1712
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    return-void

    .line 1707
    :cond_da
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    .line 1708
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c8

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "startNavigating: scount cleared."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 1715
    :cond_ea
    if-eqz p2, :cond_ed

    .line 1716
    return-void

    .line 1720
    :cond_ed
    invoke-direct {p0, v8, v2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 1722
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_110

    .line 1725
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    if-lt v0, v10, :cond_110

    .line 1726
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1726
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1731
    :cond_110
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1732
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v0, v10}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    goto/16 :goto_d

    .line 1678
    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_91
        :pswitch_99
        :pswitch_95
    .end packed-switch
.end method

.method private declared-synchronized stopNavigating(Z)V
    .registers 3
    .param p1, "silent"    # Z

    .prologue
    monitor-enter p0

    .line 1740
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating_Locked(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 1739
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopNavigating_Locked(Z)V
    .registers 10
    .param p1, "silent"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1744
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopNavigating s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_22
    if-nez p1, :cond_33

    .line 1747
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    .line 1748
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_33

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopNavigating: scount cleared."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_73

    .line 1751
    iput-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1752
    iput-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1754
    if-eqz p1, :cond_63

    .line 1755
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    .line 1756
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_63

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopNavigating scount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSilentCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_63
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop()Z

    .line 1759
    if-eqz p1, :cond_69

    .line 1760
    return-void

    .line 1762
    :cond_69
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1763
    iput-wide v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1764
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    .line 1767
    invoke-direct {p0, v4, v3}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1742
    :cond_72
    :goto_72
    return-void

    .line 1768
    :cond_73
    if-nez p1, :cond_72

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSaving:Z

    if-eqz v0, :cond_72

    .line 1769
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1770
    iput-wide v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1771
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    .line 1773
    invoke-direct {p0, v3, v3}, Lcom/android/server/location/GnssLocationProvider;->provideStatus(ZZ)V

    .line 1776
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    if-eqz v0, :cond_72

    .line 1777
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    goto :goto_72
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 609
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "received SIM related action: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_d
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 610
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 612
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 614
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_40

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIM MCC/MNC is available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_40
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 616
    :try_start_43
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v2}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 617
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_51

    monitor-exit v3

    .line 608
    :cond_50
    :goto_50
    return-void

    .line 615
    :catchall_51
    move-exception v2

    monitor-exit v3

    throw v2

    .line 620
    :cond_54
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_50

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "SIM MCC/MNC is still not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2783
    const-string/jumbo v1, "IP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2784
    return v4

    .line 2786
    :cond_d
    const-string/jumbo v1, "IPV6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2787
    return v2

    .line 2789
    :cond_17
    const-string/jumbo v1, "IPV4V6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2790
    const/4 v1, 0x3

    return v1

    .line 2794
    :cond_22
    const-string/jumbo v1, "Unknown IP Protocol: %s, for APN: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2795
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    return v3
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1525
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v7, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v0

    .line 1526
    .local v0, "changes":[Landroid/os/WorkSource;
    if-nez v0, :cond_9

    .line 1527
    return-void

    .line 1529
    :cond_9
    const/4 v7, 0x0

    aget-object v5, v0, v7

    .line 1530
    .local v5, "newWork":Landroid/os/WorkSource;
    const/4 v7, 0x1

    aget-object v2, v0, v7

    .line 1533
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_43

    .line 1534
    const/4 v4, -0x1

    .line 1535
    .local v4, "lastuid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_43

    .line 1537
    :try_start_19
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1538
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    .line 1539
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 1538
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    .line 1540
    if-eq v6, v4, :cond_35

    .line 1541
    move v4, v6

    .line 1542
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_35} :catch_38

    .line 1535
    .end local v6    # "uid":I
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1544
    :catch_38
    move-exception v1

    .line 1545
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GnssLocationProvider"

    const-string/jumbo v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 1551
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_43
    if-eqz v2, :cond_77

    .line 1552
    const/4 v4, -0x1

    .line 1553
    .restart local v4    # "lastuid":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_47
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_77

    .line 1555
    :try_start_4d
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1556
    .restart local v6    # "uid":I
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    .line 1557
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 1556
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1558
    if-eq v6, v4, :cond_69

    .line 1559
    move v4, v6

    .line 1560
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_69} :catch_6c

    .line 1553
    .end local v6    # "uid":I
    :cond_69
    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 1562
    :catch_6c
    move-exception v1

    .line 1563
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GnssLocationProvider"

    const-string/jumbo v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 1523
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_77
    return-void
.end method

.method private updateEngineLock()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 626
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mInitialized:Z

    if-nez v2, :cond_9

    .line 627
    return-void

    .line 630
    :cond_9
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineLock:I

    .line 631
    .local v1, "oldLock":I
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    if-eqz v2, :cond_1f

    .line 632
    iput v5, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineLock:I

    .line 661
    :goto_11
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsConfFromSim:Z

    if-eqz v2, :cond_1e

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineLock:I

    if-eq v1, v2, :cond_1e

    .line 662
    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineLock:I

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_engine_lock(I)V

    .line 625
    :cond_1e
    return-void

    .line 636
    :cond_1f
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsConfFromSim:Z

    if-nez v2, :cond_36

    .line 637
    const-string/jumbo v2, "persist.mot.gps.locktype"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 638
    .local v0, "lock":I
    if-eq v0, v5, :cond_33

    if-eq v0, v4, :cond_33

    if-eq v0, v6, :cond_33

    if-eq v0, v7, :cond_33

    .line 639
    const/4 v0, 0x2

    .line 657
    :cond_33
    :goto_33
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineLock:I

    goto :goto_11

    .line 643
    .end local v0    # "lock":I
    :cond_36
    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsLock:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3e

    .line 645
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsLock:I

    .restart local v0    # "lock":I
    goto :goto_33

    .line 650
    .end local v0    # "lock":I
    :cond_3e
    const-string/jumbo v2, "persist.mot.gps.locktype"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 651
    .restart local v0    # "lock":I
    if-eq v0, v5, :cond_33

    if-eq v0, v4, :cond_33

    if-eq v0, v6, :cond_33

    if-eq v0, v7, :cond_33

    .line 652
    const/4 v0, 0x2

    goto :goto_33
.end method

.method private updateLowPowerMode()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 715
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 716
    .local v0, "disableGps":Z
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "batterySaverGpsMode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_36

    .line 723
    :goto_18
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-eq v0, v1, :cond_21

    .line 724
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 725
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 713
    :cond_21
    return-void

    .line 720
    :pswitch_22
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_32
    :goto_32
    or-int/2addr v0, v1

    .line 721
    goto :goto_18

    :cond_34
    move v1, v2

    .line 720
    goto :goto_32

    .line 716
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method

.method private updateRequirements()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1461
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_b

    .line 1462
    :cond_a
    return-void

    .line 1465
    :cond_b
    const/4 v8, 0x0

    .line 1468
    .local v8, "singleShot":Z
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v0, :cond_39

    .line 1469
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 1472
    const/4 v8, 0x1

    .line 1474
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "lr$iterator":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationRequest;

    .line 1475
    .local v6, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v0

    if-eq v0, v9, :cond_25

    .line 1476
    const/4 v8, 0x0

    goto :goto_25

    .line 1481
    .end local v6    # "lr":Landroid/location/LocationRequest;
    .end local v7    # "lr$iterator":Ljava/util/Iterator;
    :cond_39
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_59

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_59
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-eqz v0, :cond_8b

    .line 1508
    :cond_63
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1511
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating(Z)V

    .line 1513
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    if-eqz v0, :cond_7c

    .line 1514
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->cancelAlarm()V

    .line 1515
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mMvmtMon:Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->stop()V

    .line 1518
    :cond_7c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1519
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1460
    :cond_8a
    :goto_8a
    return-void

    .line 1482
    :cond_8b
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1484
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1486
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1489
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_cb

    .line 1490
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interval overflow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1495
    :cond_cb
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_ec

    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 1497
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1498
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    .line 1497
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1499
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 1501
    :cond_ec
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_8a

    .line 1504
    invoke-direct {p0, v8, v2}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(ZZ)V

    goto :goto_8a
.end method

.method private updateStatus(II)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    .prologue
    .line 1435
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1a

    .line 1436
    :cond_8
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 1437
    iput p2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    .line 1438
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 1434
    :cond_1a
    return-void
.end method

.method private xtraDownloadRequest()V
    .registers 4

    .prologue
    .line 2213
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_d
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2212
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1378
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1379
    :try_start_4
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_14

    if-nez v0, :cond_a

    monitor-exit v1

    return-void

    .line 1380
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_14

    monitor-exit v1

    .line 1383
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1377
    return-void

    .line 1378
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    .line 2873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2874
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "  mFixInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2875
    const-string/jumbo v1, "  mDisableGps (battery saver mode)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2876
    const-string/jumbo v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2877
    const-string/jumbo v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2879
    :cond_4a
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string/jumbo v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    :cond_57
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_64

    const-string/jumbo v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2881
    :cond_64
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string/jumbo v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    :cond_72
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_80

    const-string/jumbo v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2883
    :cond_80
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string/jumbo v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2884
    :cond_8e
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_9c

    const-string/jumbo v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2885
    :cond_9c
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_aa

    const-string/jumbo v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2886
    :cond_aa
    const-string/jumbo v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2872
    return-void
.end method

.method public enable()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1263
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1264
    :try_start_4
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_14

    if-eqz v0, :cond_a

    monitor-exit v1

    return-void

    .line 1265
    :cond_a
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_14

    monitor-exit v1

    .line 1268
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1262
    return-void

    .line 1263
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Landroid/location/IGnssStatusProvider;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
    .registers 2

    .prologue
    .line 2201
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$14;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$14;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1002
    const-string/jumbo v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    .prologue
    .line 1007
    sget-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1428
    if-eqz p1, :cond_a

    .line 1429
    const-string/jumbo v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1431
    :cond_a
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 1445
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1422
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 1421
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 21
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .param p10, "extras"    # Ljava/lang/String;

    .prologue
    .line 2405
    const-string/jumbo v7, "GnssLocationProvider"

    const-string/jumbo v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    const-string/jumbo v7, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2407
    const-string/jumbo v9, ", niType: "

    .line 2406
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2408
    const-string/jumbo v9, ", notifyFlags: "

    .line 2406
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2409
    const-string/jumbo v9, ", timeout: "

    .line 2406
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2410
    const-string/jumbo v9, ", defaultResponse: "

    .line 2406
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    const-string/jumbo v7, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2413
    const-string/jumbo v9, ", text: "

    .line 2412
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2414
    const-string/jumbo v9, ", requestorIdEncoding: "

    .line 2412
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2415
    const-string/jumbo v9, ", textEncoding: "

    .line 2412
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2419
    .local v6, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2420
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2421
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_101

    const/4 v7, 0x1

    :goto_a0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2422
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_103

    const/4 v7, 0x1

    :goto_a7
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2423
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_105

    const/4 v7, 0x1

    :goto_ae
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2424
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2425
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2426
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2427
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2428
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2429
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2433
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2435
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_ce

    const-string/jumbo p10, ""

    .line 2436
    :cond_ce
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 2439
    .local v5, "extraProp":Ljava/util/Properties;
    :try_start_d3
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_dd} :catch_107

    .line 2446
    :goto_dd
    invoke-virtual {v5}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ent$iterator":Ljava/util/Iterator;
    :goto_e5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_125

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2448
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e5

    .line 2421
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "ent$iterator":Ljava/util/Iterator;
    .end local v5    # "extraProp":Ljava/util/Properties;
    :cond_101
    const/4 v7, 0x0

    goto :goto_a0

    .line 2422
    :cond_103
    const/4 v7, 0x0

    goto :goto_a7

    .line 2423
    :cond_105
    const/4 v7, 0x0

    goto :goto_ae

    .line 2442
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "extraProp":Ljava/util/Properties;
    :catch_107
    move-exception v2

    .line 2443
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    .line 2451
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "ent$iterator":Ljava/util/Iterator;
    :cond_125
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2453
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2403
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1573
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 1575
    .local v2, "result":Z
    const-string/jumbo v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1576
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1589
    .end local v2    # "result":Z
    :cond_12
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1590
    return v2

    .line 1577
    .restart local v2    # "result":Z
    :cond_16
    const-string/jumbo v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1578
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 1579
    const/4 v2, 0x1

    goto :goto_12

    .line 1580
    :cond_24
    const-string/jumbo v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1581
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_12

    .line 1582
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    .line 1583
    const/4 v2, 0x1

    goto :goto_12

    .line 1586
    :cond_36
    const-string/jumbo v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1450
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1449
    return-void
.end method

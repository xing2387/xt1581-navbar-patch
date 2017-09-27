.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/twilight/TwilightService$1;,
        Lcom/android/server/twilight/TwilightService$2;,
        Lcom/android/server/twilight/TwilightService$3;,
        Lcom/android/server/twilight/TwilightService$4;,
        Lcom/android/server/twilight/TwilightService$5;,
        Lcom/android/server/twilight/TwilightService$LocationHandler;,
        Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_TWILIGHT_AUTO:Ljava/lang/String; = "com.android.server.action.RESET_TWILIGHT_AUTO"

.field public static final ACTION_TWILIGHT_CHANGED:Ljava/lang/String; = "android.intent.action.TWILIGHT_CHANGED"

.field static final ACTION_UPDATE_TWILIGHT_STATE:Ljava/lang/String; = "com.android.server.action.UPDATE_TWILIGHT_STATE"

.field static final DEBUG:Z = false

.field public static final EXTRA_AMOUNT:Ljava/lang/String; = "amount"

.field public static final EXTRA_IS_NIGHT:Ljava/lang/String; = "isNight"

.field private static final EXTRA_RESET_USER:Ljava/lang/String; = "user"

.field private static final RESET_TIME:J = 0x6ddd00L

.field static final TAG:Ljava/lang/String; = "TwilightService"

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:Z

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentUser:I

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

.field private final mLocationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private mLocked:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Lcom/android/server/twilight/TwilightManager;

.field mTwilightState:Lcom/android/server/twilight/TwilightState;


# direct methods
.method static synthetic -get0(Lcom/android/server/twilight/TwilightService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/twilight/TwilightService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/twilight/TwilightService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mLocked:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 3
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/twilight/TwilightService;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/twilight/TwilightService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->reregisterSettingObserver()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/twilight/TwilightService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->scheduleReset()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V
    .registers 2
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->setLockedState(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V
    .registers 2
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    .line 554
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    .line 577
    new-instance v0, Lcom/android/server/twilight/TwilightService$3;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 605
    new-instance v0, Lcom/android/server/twilight/TwilightService$4;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$4;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 619
    new-instance v0, Lcom/android/server/twilight/TwilightService$5;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$5;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    .line 98
    return-void
.end method

.method private static hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 10
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    if-nez p1, :cond_5

    .line 265
    return v3

    .line 268
    :cond_5
    if-nez p0, :cond_8

    .line 269
    return v2

    .line 273
    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_15

    .line 274
    return v3

    .line 278
    :cond_15
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 281
    .local v0, "distance":F
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    add-float v1, v4, v5

    .line 285
    .local v1, "totalAccuracy":F
    cmpl-float v4, v0, v1

    if-ltz v4, :cond_28

    :goto_27
    return v2

    :cond_28
    move v2, v3

    goto :goto_27
.end method

.method private reregisterSettingObserver()V
    .registers 6

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 134
    const-string/jumbo v1, "twilight_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    .line 134
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 131
    return-void
.end method

.method private scheduleReset()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x6ddd00

    add-long v2, v4, v6

    .line 189
    .local v2, "resetTime":J
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.server.action.RESET_TWILIGHT_AUTO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "resetIntent":Landroid/content/Intent;
    const-string/jumbo v4, "user"

    iget v5, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 191
    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 193
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 194
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 187
    return-void
.end method

.method private sendBroadcast()V
    .registers 5

    .prologue
    .line 173
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3d

    if-nez v1, :cond_9

    monitor-exit v2

    .line 175
    return-void

    .line 177
    :cond_9
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v1, :cond_3b

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.TWILIGHT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "isNight"

    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string/jumbo v1, "amount"

    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->getAmount()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 181
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_3d

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3b
    monitor-exit v2

    .line 172
    return-void

    .line 173
    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setLockedState(Lcom/android/server/twilight/TwilightState;)V
    .registers 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mLocked:Z

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mLocked:Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit v1

    .line 139
    return-void

    .line 140
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setTwilightState(Lcom/android/server/twilight/TwilightState;)V
    .registers 6
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 151
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 152
    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mLocked:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2f

    if-eqz v2, :cond_9

    monitor-exit v3

    .line 154
    return-void

    .line 156
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v2, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 161
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 163
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 164
    .local v1, "listenerLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v1, :cond_2a

    .line 165
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->postUpdate()V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_2f

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .end local v0    # "i":I
    .end local v1    # "listenerLen":I
    :cond_2a
    monitor-exit v3

    .line 169
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->sendBroadcast()V

    .line 150
    return-void

    .line 151
    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .prologue
    const/4 v5, 0x1

    .line 122
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_26

    .line 123
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "twilight_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 125
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 126
    iput-boolean v5, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 127
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->sendBroadcast()V

    .line 121
    :cond_26
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 105
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    const-string/jumbo v2, "location"

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 107
    new-instance v1, Lcom/android/server/twilight/TwilightService$LocationHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$LocationHandler;)V

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    .line 108
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/twilight/TwilightService;->mCurrentUser:I

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v1, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

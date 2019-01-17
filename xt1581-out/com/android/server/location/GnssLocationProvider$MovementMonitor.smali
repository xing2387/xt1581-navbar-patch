.class public final Lcom/android/server/location/GnssLocationProvider$MovementMonitor;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MovementMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;
    }
.end annotation


# static fields
.field public static final EXTRA_GPS_SAVINGS_ON:Ljava/lang/String; = "savings_on"

.field public static final GPS_SAVINGS_CHANGE_ACTION:Ljava/lang/String; = "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

.field private static final MIN_PROPAGATION_INTERVAL:I = 0x1388

.field private static final NO_FIX_MVMT_MON_RESET_TIMEOUT:I = 0xea60

.field private static final NO_MVMT_FIX_TIMEOUT:I = 0x249f0

.field private static final NO_MVMT_NO_FIX_TIMEOUT:I = 0x1d4c0

.field private static final STATE_MON_FIX:I = 0x2

.field private static final STATE_MON_NO_FIX:I = 0x1

.field private static final STATE_PROPAGATE:I = 0x3

.field private static final STATE_SLEEP:I = 0x4

.field private static final STATE_STOP:I


# instance fields
.field private mAlarmActive:Z

.field private mCharging:Z

.field private mEndDuration:I

.field private mExpectEnd:Z

.field private mFirstCb:Z

.field private final mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

.field private final mMvmtMgr:Lcom/motorola/slpc/ModalityManager;

.field private mPropInterval:I

.field private mPropagateTime:J

.field private mState:I

.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mEndDuration:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mExpectEnd:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mFirstCb:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mPropInterval:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mExpectEnd:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mFirstCb:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mPropagateTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;Z)V
    .registers 2
    .param p1, "savingsOn"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/GnssLocationProvider;Lcom/motorola/slpc/ModalityManager;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "mvmtMgr"    # Lcom/motorola/slpc/ModalityManager;

    .prologue
    const/4 v1, 0x0

    .line 2958
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3197
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor$1;-><init>(Lcom/android/server/location/GnssLocationProvider$MovementMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    .line 2959
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I

    .line 2960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mFirstCb:Z

    .line 2961
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mExpectEnd:Z

    .line 2962
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mEndDuration:I

    .line 2963
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mPropInterval:I

    .line 2964
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    .line 2958
    return-void
.end method

.method private broadcastSavings(Z)V
    .registers 4
    .param p1, "savingsOn"    # Z

    .prologue
    .line 3100
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3101
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "savings_on"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3102
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3099
    return-void
.end method

.method private propagate()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x3e8

    .line 3174
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v6, "MovementMonitor propagate"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    :cond_11
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I

    const/4 v6, 0x3

    if-eq v1, v6, :cond_20

    .line 3176
    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v6, "propagate() called when not propagating!"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    return-void

    .line 3182
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3183
    .local v4, "now":J
    iget-wide v6, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mPropagateTime:J

    sub-long v2, v4, v6

    .line 3184
    .local v2, "elapsed":J
    iput-wide v4, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mPropagateTime:J

    .line 3185
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get14(Lcom/android/server/location/GnssLocationProvider;)Landroid/location/Location;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v6}, Lcom/android/server/location/GnssLocationProvider;->-get14(Lcom/android/server/location/GnssLocationProvider;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 3186
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get14(Lcom/android/server/location/GnssLocationProvider;)Landroid/location/Location;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v6}, Lcom/android/server/location/GnssLocationProvider;->-get14(Lcom/android/server/location/GnssLocationProvider;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    .line 3187
    mul-long v8, v2, v10

    mul-long/2addr v8, v10

    .line 3186
    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 3188
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get10(Lcom/android/server/location/GnssLocationProvider;)Landroid/location/ILocationManager;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v6}, Lcom/android/server/location/GnssLocationProvider;->-get14(Lcom/android/server/location/GnssLocationProvider;)Landroid/location/Location;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V

    .line 3189
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/android/server/location/GnssLocationProvider;->-set2(Lcom/android/server/location/GnssLocationProvider;J)J
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_6e} :catch_7c

    .line 3194
    .end local v2    # "elapsed":J
    .end local v4    # "now":J
    :goto_6e
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mPropInterval:I

    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v7}, Lcom/android/server/location/GnssLocationProvider;->-get16(Lcom/android/server/location/GnssLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lcom/android/server/location/GnssLocationProvider;->-wrap27(Lcom/android/server/location/GnssLocationProvider;ILandroid/app/PendingIntent;)V

    .line 3173
    return-void

    .line 3190
    :catch_7c
    move-exception v0

    .line 3191
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v6, "RemoteException calling reportLocation"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e
.end method

.method private declared-synchronized start(Z)V
    .registers 10
    .param p1, "fix"    # Z

    .prologue
    const v3, 0x249f0

    const/16 v0, 0x1388

    const/4 v7, 0x1

    monitor-enter p0

    .line 3125
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3126
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->stop()V

    .line 3131
    :cond_10
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v1

    const v2, 0xea60

    if-lt v1, v2, :cond_2c

    .line 3132
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "MovementMonitor start, fix interval too long"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_ac

    :cond_2a
    monitor-exit p0

    .line 3133
    return-void

    .line 3136
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v1

    if-le v1, v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v0

    :cond_3a
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mPropInterval:I

    .line 3138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mFirstCb:Z

    .line 3140
    if-eqz p1, :cond_af

    .line 3141
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v0

    if-gt v0, v3, :cond_a1

    .line 3142
    const v0, 0x249f0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mEndDuration:I

    .line 3150
    :goto_4e
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MovementMonitor start, prop interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mPropInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3151
    const-string/jumbo v2, ", end duration: "

    .line 3150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3151
    iget v2, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mEndDuration:I

    .line 3150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    :cond_7d
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    const-wide/16 v2, 0x3e8

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mEndDuration:I

    int-to-long v4, v4

    .line 3154
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v6}, Lcom/android/server/location/GnssLocationProvider;->-get9(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 3153
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/slpc/ModalityManager;->addMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;JJLandroid/os/Looper;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 3155
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "Failed to register movement listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_2c .. :try_end_9f} :catchall_ac

    :goto_9f
    monitor-exit p0

    .line 3160
    return-void

    .line 3144
    :cond_a1
    :try_start_a1
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mEndDuration:I
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_ac

    goto :goto_4e

    :catchall_ac
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3147
    :cond_af
    const v0, 0x1d4c0

    :try_start_b2
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_4e

    .line 3157
    :cond_b5
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "registered MovementListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    :cond_c4
    if-eqz p1, :cond_ca

    const/4 v0, 0x2

    :goto_c7
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I
    :try_end_c9
    .catchall {:try_start_b2 .. :try_end_c9} :catchall_ac

    goto :goto_9f

    :cond_ca
    move v0, v7

    goto :goto_c7
.end method


# virtual methods
.method public declared-synchronized cancelAlarm()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 2980
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mAlarmActive:Z

    .line 2981
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get16(Lcom/android/server/location/GnssLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    monitor-exit p0

    .line 2979
    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMonitoring()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2997
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isPropagating()Z
    .registers 3

    .prologue
    .line 3001
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public monitor(Z)V
    .registers 5
    .param p1, "fix"    # Z

    .prologue
    .line 3106
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mCharging:Z

    if-eqz v0, :cond_14

    .line 3107
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "monitor() ignoring monitor for charging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    :cond_13
    return-void

    .line 3111
    :cond_14
    if-eqz p1, :cond_2b

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 3113
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "MovementMonitor monitor, fix in mon fix state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    :cond_2a
    return-void

    .line 3117
    :cond_2b
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MovementMonitor monitor, fix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3118
    const-string/jumbo v2, ", fix interval: "

    .line 3117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3118
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v2

    .line 3117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->cancelAlarm()V

    .line 3121
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->start(Z)V

    .line 3105
    return-void
.end method

.method public declared-synchronized receivedAlarm()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 2985
    :try_start_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ALARM_MVMT_MON alarmActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mAlarmActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mAlarmActive:Z

    if-eqz v0, :cond_33

    .line 2987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mAlarmActive:Z

    .line 2988
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isPropagating()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2989
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->propagate()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3a

    :cond_33
    :goto_33
    monitor-exit p0

    .line 2984
    return-void

    .line 2991
    :cond_35
    const/4 v0, 0x0

    :try_start_36
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->monitor(Z)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_33

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAlarm(I)V
    .registers 8
    .param p1, "triggerOffset"    # I

    .prologue
    monitor-enter p0

    .line 2972
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mAlarmActive:Z

    .line 2973
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 2974
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 2975
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get16(Lcom/android/server/location/GnssLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2973
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    .line 2971
    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNoFixAlarm(I)V
    .registers 2
    .param p1, "triggerOffset"    # I

    .prologue
    .line 2968
    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->setAlarm(I)V

    .line 2967
    return-void
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 3164
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isMonitoring()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_24

    move-result v0

    if-nez v0, :cond_9

    monitor-exit p0

    .line 3165
    return-void

    .line 3168
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "MovementMonitor stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    :cond_18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I

    .line 3170
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    invoke-virtual {v0, v1}, Lcom/motorola/slpc/ModalityManager;->removeMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 3163
    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCharging(Z)V
    .registers 8
    .param p1, "charging"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3028
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mCharging:Z

    if-eq v1, p1, :cond_43

    .line 3029
    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 3030
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "stopping for charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->stop()V

    .line 3034
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    monitor-enter v2

    .line 3036
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_24
    invoke-virtual {p0, v1, v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 3039
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap36(Lcom/android/server/location/GnssLocationProvider;ZZ)V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_44

    monitor-exit v2

    .line 3043
    if-eqz v0, :cond_35

    .line 3044
    invoke-direct {p0, v5}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .line 3048
    .end local v0    # "changed":Z
    :cond_35
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    monitor-enter v2

    .line 3049
    if-nez p1, :cond_40

    :try_start_3a
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isMonitoring()Z
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_5c

    move-result v1

    if-eqz v1, :cond_47

    :cond_40
    :goto_40
    monitor-exit v2

    .line 3055
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mCharging:Z

    .line 3027
    :cond_43
    return-void

    .line 3034
    :catchall_44
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3049
    :cond_47
    :try_start_47
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get26(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3051
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get15(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$MovementMonitor;

    move-result-object v1

    const v3, 0xea60

    invoke-virtual {v1, v3}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->setNoFixAlarm(I)V
    :try_end_5b
    .catchall {:try_start_47 .. :try_end_5b} :catchall_5c

    goto :goto_40

    .line 3048
    :catchall_5c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateFixInterval()V
    .registers 3

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v0

    const v1, 0xea60

    if-lt v0, v1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3006
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "MovementMonitor stopping for long fix interval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->stop()V

    .line 3004
    :cond_23
    return-void
.end method

.method public updateHibernate()V
    .registers 3

    .prologue
    .line 3012
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "updateHibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3014
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopping for hibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->stop()V

    .line 3011
    :cond_27
    return-void
.end method

.method public updateNoFix()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3021
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I

    if-eq v0, v1, :cond_d

    .line 3022
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    .line 3023
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->mState:I

    .line 3020
    :cond_d
    return-void
.end method

.method public updateSavings(ZZ)Z
    .registers 13
    .param p1, "savingsOn"    # Z
    .param p2, "broadcast"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 3062
    const-wide/16 v2, 0x0

    .line 3064
    .local v2, "smartGpsUptime":J
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get23(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v1

    if-eq p1, v1, :cond_d4

    .line 3065
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/GnssLocationProvider;->-set3(Lcom/android/server/location/GnssLocationProvider;Z)Z

    .line 3066
    if-eqz p2, :cond_16

    .line 3067
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .line 3070
    :cond_16
    if-eqz p1, :cond_48

    .line 3071
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/location/GnssLocationProvider;->-set5(Lcom/android/server/location/GnssLocationProvider;J)J

    .line 3072
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.motorola.location.instrumentation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3073
    .local v0, "instrumentationIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.motorola.location.insttype"

    const-string/jumbo v4, "smartGpsCount"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3074
    const-string/jumbo v1, "com.motorola.location.instincvalue"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3075
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "com.motorola.android.permission.LOC_INST_RECEIVE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3094
    .end local v0    # "instrumentationIntent":Landroid/content/Intent;
    :goto_46
    const/4 v1, 0x1

    return v1

    .line 3077
    :cond_48
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/location/GnssLocationProvider;->-set6(Lcom/android/server/location/GnssLocationProvider;J)J

    .line 3078
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get25(Lcom/android/server/location/GnssLocationProvider;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get24(Lcom/android/server/location/GnssLocationProvider;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 3079
    cmp-long v1, v2, v8

    if-lez v1, :cond_c8

    .line 3080
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.motorola.location.instrumentation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3081
    .restart local v0    # "instrumentationIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.motorola.location.insttype"

    const-string/jumbo v4, "smartGpsUptime"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3082
    const-string/jumbo v1, "com.motorola.location.instincvalue"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3083
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "com.motorola.android.permission.LOC_INST_RECEIVE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3084
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 3085
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sending smartGpsUptime Intent - mSmartGpsStopTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3086
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v5}, Lcom/android/server/location/GnssLocationProvider;->-get25(Lcom/android/server/location/GnssLocationProvider;)J

    move-result-wide v6

    .line 3085
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3086
    const-string/jumbo v5, " mSmartGpsStartTime = "

    .line 3085
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3086
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v5}, Lcom/android/server/location/GnssLocationProvider;->-get24(Lcom/android/server/location/GnssLocationProvider;)J

    move-result-wide v6

    .line 3085
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3087
    const-string/jumbo v5, " smartGpsUptime = "

    .line 3085
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    .end local v0    # "instrumentationIntent":Landroid/content/Intent;
    :cond_c8
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1, v8, v9}, Lcom/android/server/location/GnssLocationProvider;->-set6(Lcom/android/server/location/GnssLocationProvider;J)J

    .line 3091
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1, v8, v9}, Lcom/android/server/location/GnssLocationProvider;->-set5(Lcom/android/server/location/GnssLocationProvider;J)J

    goto/16 :goto_46

    .line 3096
    :cond_d4
    const/4 v1, 0x0

    return v1
.end method

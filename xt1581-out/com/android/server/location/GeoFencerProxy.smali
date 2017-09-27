.class public Lcom/android/server/location/GeoFencerProxy;
.super Lcom/android/server/location/GeoFencerBase;
.source "GeoFencerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeoFencerProxy$1;,
        Lcom/android/server/location/GeoFencerProxy$2;
    }
.end annotation


# static fields
.field private static final LOGV_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "GeoFencerProxy"

.field private static mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeoFencer:Landroid/location/IGeoFencer;

.field private final mIntent:Landroid/content/Intent;

.field private final mListener:Landroid/location/IGeoFenceListener$Stub;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -set0(Lcom/android/server/location/GeoFencerProxy;Landroid/location/IGeoFencer;)Landroid/location/IGeoFencer;
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    return-object p1
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerBase;-><init>()V

    .line 63
    new-instance v4, Lcom/android/server/location/GeoFencerProxy$1;

    invoke-direct {v4, p0}, Lcom/android/server/location/GeoFencerProxy$1;-><init>(Lcom/android/server/location/GeoFencerProxy;)V

    iput-object v4, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 83
    new-instance v4, Lcom/android/server/location/GeoFencerProxy$2;

    invoke-direct {v4, p0}, Lcom/android/server/location/GeoFencerProxy$2;-><init>(Lcom/android/server/location/GeoFencerProxy;)V

    iput-object v4, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    .line 102
    iput-object p1, p0, Lcom/android/server/location/GeoFencerProxy;->mContext:Landroid/content/Context;

    .line 103
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/location/GeoFencerProxy;->mIntent:Landroid/content/Intent;

    .line 105
    iget-object v4, p0, Lcom/android/server/location/GeoFencerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 106
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/location/GeoFencerProxy;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 107
    .local v0, "geofencerResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 108
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v1, "name":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/location/GeoFencerProxy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    iget-object v4, p0, Lcom/android/server/location/GeoFencerProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/GeoFencerProxy;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 112
    const/16 v7, 0x15

    .line 111
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 101
    return-void
.end method

.method private ensureGeoFencer()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    if-nez v1, :cond_2d

    .line 128
    :try_start_5
    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_22

    .line 132
    :try_start_8
    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_1f

    :try_start_10
    monitor-exit v2
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_11} :catch_22

    .line 142
    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    if-nez v1, :cond_2d

    .line 143
    const-string/jumbo v1, "GeoFencerProxy"

    const-string/jumbo v2, "Timed out. No GeoFencer connection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v3

    .line 128
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v2

    throw v1
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_22} :catch_22

    .line 137
    :catch_22
    move-exception v0

    .line 138
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "GeoFencerProxy"

    const-string/jumbo v2, "Interrupted while waiting for GeoFencer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v3

    .line 148
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_2d
    const/4 v1, 0x1

    return v1
.end method

.method public static getGeoFencerProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/location/GeoFencerProxy;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;

    if-nez v0, :cond_b

    .line 96
    new-instance v0, Lcom/android/server/location/GeoFencerProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GeoFencerProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;

    .line 98
    :cond_b
    sget-object v0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;

    return-object v0
.end method


# virtual methods
.method public removeCaller(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/server/location/GeoFencerBase;->removeCaller(I)V

    .line 120
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    invoke-interface {v1, p1}, Landroid/location/IGeoFencer;->clearGeoFenceUser(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 117
    :goto_8
    return-void

    .line 121
    :catch_9
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_8
.end method

.method protected start(Landroid/location/GeoFenceParams;)Z
    .registers 5
    .param p1, "geofence"    # Landroid/location/GeoFenceParams;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerProxy;->ensureGeoFencer()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 154
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    invoke-interface {v1, v2, p1}, Landroid/location/IGeoFencer;->setGeoFence(Landroid/os/IBinder;Landroid/location/GeoFenceParams;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 155
    :catch_f
    move-exception v0

    .line 158
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method protected stop(Landroid/app/PendingIntent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerProxy;->ensureGeoFencer()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 164
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    invoke-interface {v1, v2, p1}, Landroid/location/IGeoFencer;->clearGeoFenceIntent(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 165
    const/4 v1, 0x1

    return v1

    .line 166
    :catch_f
    move-exception v0

    .line 169
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method protected stop(Landroid/location/GeoFenceParams;)Z
    .registers 5
    .param p1, "geofence"    # Landroid/location/GeoFenceParams;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerProxy;->ensureGeoFencer()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 176
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    invoke-interface {v1, v2, p1}, Landroid/location/IGeoFencer;->clearGeoFence(Landroid/os/IBinder;Landroid/location/GeoFenceParams;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 177
    const/4 v1, 0x1

    return v1

    .line 178
    :catch_f
    move-exception v0

    .line 181
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

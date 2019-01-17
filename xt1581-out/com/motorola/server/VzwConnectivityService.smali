.class public Lcom/motorola/server/VzwConnectivityService;
.super Lcom/verizon/net/IVzwConnectivityManager$Stub;
.source "VzwConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/VzwConnectivityService$1;,
        Lcom/motorola/server/VzwConnectivityService$DataRecord;,
        Lcom/motorola/server/VzwConnectivityService$MyHandler;
    }
.end annotation


# static fields
.field private static final INDEX_RX:I = 0x0

.field private static final INDEX_TX:I = 0x1

.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_IFACE:Ljava/lang/String; = "iface"

.field private static final KEY_RX_BYTES:Ljava/lang/String; = "rx_bytes"

.field private static final KEY_RX_PACKETS:Ljava/lang/String; = "rx_packets"

.field private static final KEY_SNAP_RX_BYTES:Ljava/lang/String; = "snap_rx_bytes"

.field private static final KEY_SNAP_RX_PACKETS:Ljava/lang/String; = "snap_rx_packets"

.field private static final KEY_SNAP_TX_BYTES:Ljava/lang/String; = "snap_tx_bytes"

.field private static final KEY_SNAP_TX_PACKETS:Ljava/lang/String; = "snap_tx_packets"

.field private static final KEY_TX_BYTES:Ljava/lang/String; = "tx_bytes"

.field private static final KEY_TX_PACKETS:Ljava/lang/String; = "tx_packets"

.field private static final MSG_CONNECTIVITY_ACTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VzwConnectivityService"


# instance fields
.field private mApnIfacesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mApnNameSuffix:Ljava/lang/String;

.field mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIfaceApnsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIfaceLastDisconBase:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIfaceStats:Ljava/io/File;

.field private mNetworkApnStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/server/VzwConnectivityService$DataRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPhone:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/motorola/server/VzwConnectivityService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/motorola/server/VzwConnectivityService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceLastDisconBase:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/motorola/server/VzwConnectivityService;)V
    .registers 1

    invoke-direct {p0}, Lcom/motorola/server/VzwConnectivityService;->updateNetworkApnStats()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/verizon/net/IVzwConnectivityManager$Stub;-><init>()V

    .line 71
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    .line 72
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceApnsList:Ljava/util/HashMap;

    .line 73
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mApnIfacesList:Ljava/util/HashMap;

    .line 74
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceLastDisconBase:Ljava/util/HashMap;

    .line 75
    const-string/jumbo v1, "_APN"

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mApnNameSuffix:Ljava/lang/String;

    .line 314
    new-instance v1, Lcom/motorola/server/VzwConnectivityService$1;

    invoke-direct {v1, p0}, Lcom/motorola/server/VzwConnectivityService$1;-><init>(Lcom/motorola/server/VzwConnectivityService;)V

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p1, p0, Lcom/motorola/server/VzwConnectivityService;->mContext:Landroid/content/Context;

    .line 98
    iget-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mPhone:Landroid/telephony/TelephonyManager;

    .line 100
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "VzwConnectivityServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v1, Lcom/motorola/server/VzwConnectivityService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/motorola/server/VzwConnectivityService$MyHandler;-><init>(Lcom/motorola/server/VzwConnectivityService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-direct {p0}, Lcom/motorola/server/VzwConnectivityService;->registerForConnectivityIntents()V

    .line 105
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/proc/net/xt_qtaguid/iface_stat_all"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceStats:Ljava/io/File;

    .line 96
    return-void
.end method

.method private getAPNInterfacePairs()Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 342
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v1, "apnIfacePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 345
    .local v7, "nwInfoList":[Landroid/net/NetworkInfo;
    :try_start_7
    iget-object v9, p0, Lcom/motorola/server/VzwConnectivityService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v9}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_71

    move-result-object v7

    .line 351
    .local v7, "nwInfoList":[Landroid/net/NetworkInfo;
    const/4 v9, 0x0

    array-length v10, v7

    :goto_f
    if-ge v9, v10, :cond_b9

    aget-object v6, v7, v9

    .line 352
    .local v6, "nIf":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_6e

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_6e

    .line 353
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    invoke-static {v11}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v11

    if-eqz v11, :cond_6e

    .line 356
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "apn":Ljava/lang/String;
    if-nez v0, :cond_37

    .line 360
    const-string/jumbo v11, "VzwConnectivityService"

    const-string/jumbo v12, "apn is null, set as empty string for later traffic counting"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string/jumbo v0, ""

    .line 367
    :cond_37
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 369
    .local v4, "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 370
    .local v8, "nwType":I
    const/4 v3, 0x0

    .line 373
    .local v3, "ifaceName":Ljava/lang/String;
    :try_start_42
    iget-object v11, p0, Lcom/motorola/server/VzwConnectivityService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v11, v8}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v5

    .line 375
    .local v5, "lp":Landroid/net/LinkProperties;
    if-eqz v5, :cond_4e

    .line 377
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4d} :catch_76

    move-result-object v3

    .line 385
    .end local v3    # "ifaceName":Ljava/lang/String;
    :cond_4e
    if-nez v3, :cond_7b

    .line 386
    const-string/jumbo v11, "VzwConnectivityService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "iface name is null, ignore mobile type:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v0    # "apn":Ljava/lang/String;
    .end local v4    # "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "lp":Landroid/net/LinkProperties;
    .end local v8    # "nwType":I
    :cond_6e
    :goto_6e
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 346
    .end local v6    # "nIf":Landroid/net/NetworkInfo;
    .local v7, "nwInfoList":[Landroid/net/NetworkInfo;
    :catch_71
    move-exception v2

    .line 347
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 348
    return-object v14

    .line 380
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "apn":Ljava/lang/String;
    .restart local v3    # "ifaceName":Ljava/lang/String;
    .restart local v4    # "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "nIf":Landroid/net/NetworkInfo;
    .local v7, "nwInfoList":[Landroid/net/NetworkInfo;
    .restart local v8    # "nwType":I
    :catch_76
    move-exception v2

    .line 381
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 382
    return-object v14

    .line 390
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "ifaceName":Ljava/lang/String;
    .restart local v5    # "lp":Landroid/net/LinkProperties;
    :cond_7b
    if-nez v4, :cond_b5

    .line 391
    new-instance v4, Ljava/util/HashSet;

    .end local v4    # "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 392
    .restart local v4    # "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :goto_88
    const-string/jumbo v11, "VzwConnectivityService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAPNInterfacePairs:add("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 395
    :cond_b5
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 402
    .end local v0    # "apn":Ljava/lang/String;
    .end local v4    # "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "lp":Landroid/net/LinkProperties;
    .end local v6    # "nIf":Landroid/net/NetworkInfo;
    .end local v8    # "nwType":I
    :cond_b9
    return-object v1
.end method

.method private getIfaceName(Ljava/util/HashSet;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 472
    .local v2, "result":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iface$iterator":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 474
    .local v0, "iface":Ljava/lang/String;
    move-object v2, v0

    .line 478
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_12
    return-object v2
.end method

.method private static getParsedInt(Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "parsed":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 702
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private static getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "parsed":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 707
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_c
    return-wide v2

    :cond_d
    const-wide/16 v2, 0x0

    goto :goto_c
.end method

.method private static parseLine(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "outParsed":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 694
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 695
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_24

    .line 696
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 691
    :cond_24
    return-void
.end method

.method private registerForConnectivityIntents()V
    .registers 4

    .prologue
    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    return-void
.end method

.method private static splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "outSplit":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 680
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, " \t\n\r\u000c:"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .local v0, "t":Ljava/util/StringTokenizer;
    :goto_b
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 682
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 677
    :cond_19
    return-void
.end method

.method private updateNetworkApnStats()V
    .registers 21

    .prologue
    .line 406
    const/16 v18, 0x0

    .line 408
    .local v18, "reusedIface":Z
    const/16 v16, 0x0

    .line 410
    .local v16, "apnIfacePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-direct/range {p0 .. p0}, Lcom/motorola/server/VzwConnectivityService;->getAPNInterfacePairs()Ljava/util/Map;

    move-result-object v16

    .line 412
    .local v16, "apnIfacePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->checkLegacyNetwork(Ljava/util/Map;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_43

    .line 416
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "apn$iterator":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 417
    .local v14, "apn":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashSet;

    .line 418
    .local v17, "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->getIfaceName(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/motorola/server/VzwConnectivityService;->addNewApnRecord(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 423
    .end local v3    # "iface":Ljava/lang/String;
    .end local v14    # "apn":Ljava/lang/String;
    .end local v15    # "apn$iterator":Ljava/util/Iterator;
    .end local v17    # "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_43
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v18    # "reusedIface":Z
    .restart local v15    # "apn$iterator":Ljava/util/Iterator;
    :cond_4f
    :goto_4f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_166

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 424
    .restart local v14    # "apn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/server/VzwConnectivityService$DataRecord;

    .line 425
    .local v2, "record":Lcom/motorola/server/VzwConnectivityService$DataRecord;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_118

    .line 428
    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->isActive()Z

    move-result v8

    if-nez v8, :cond_4f

    .line 429
    const-string/jumbo v8, "VzwConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "reconnect, record("

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v19, "): "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashSet;

    .line 431
    .restart local v17    # "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->getIfaceName(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    .line 432
    .restart local v3    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/motorola/server/VzwConnectivityService;->isIfaceUsedByOtherApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 433
    .local v18, "reusedIface":Z
    if-nez v18, :cond_ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/motorola/server/VzwConnectivityService;->isApnUseOneIface(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ea

    .line 434
    const-string/jumbo v8, "VzwConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "reconnect to apn unique interface: "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->resetData()V

    .line 443
    :goto_e3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/motorola/server/VzwConnectivityService;->updateIfaceApnList(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f

    .line 437
    :cond_ea
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/motorola/server/VzwConnectivityService;->getLastDisconnectBase(Ljava/lang/String;I)J

    move-result-wide v4

    .line 438
    .local v4, "disconRxBase":J
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/motorola/server/VzwConnectivityService;->getLastDisconnectBase(Ljava/lang/String;I)J

    move-result-wide v6

    .line 439
    .local v6, "disconTxBase":J
    const-string/jumbo v8, "VzwConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "re-connect to different iface: "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual/range {v2 .. v7}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->connectUpdate(Ljava/lang/String;JJ)V

    goto :goto_e3

    .line 448
    .end local v3    # "iface":Ljava/lang/String;
    .end local v4    # "disconRxBase":J
    .end local v6    # "disconTxBase":J
    .end local v17    # "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "reusedIface":Z
    :cond_118
    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->isActive()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 449
    const-string/jumbo v8, "VzwConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "disconnected, record("

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v19, "): "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v2}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->getIface()Ljava/lang/String;

    move-result-object v3

    .line 451
    .restart local v3    # "iface":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/motorola/server/VzwConnectivityService;->getProcTrafficBytes(Ljava/lang/String;I)J

    move-result-wide v10

    .line 452
    .local v10, "rxBytes":J
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/motorola/server/VzwConnectivityService;->getProcTrafficBytes(Ljava/lang/String;I)J

    move-result-wide v12

    .local v12, "txBytes":J
    move-object v8, v2

    move-object v9, v3

    .line 453
    invoke-virtual/range {v8 .. v13}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->disconnectUpdate(Ljava/lang/String;JJ)V

    goto/16 :goto_4f

    .line 458
    .end local v2    # "record":Lcom/motorola/server/VzwConnectivityService$DataRecord;
    .end local v3    # "iface":Ljava/lang/String;
    .end local v10    # "rxBytes":J
    .end local v12    # "txBytes":J
    .end local v14    # "apn":Ljava/lang/String;
    :cond_166
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_16e
    :goto_16e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 459
    .restart local v14    # "apn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16e

    .line 461
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashSet;

    .line 462
    .restart local v17    # "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->getIfaceName(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    .line 463
    .restart local v3    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/motorola/server/VzwConnectivityService;->addNewApnRecord(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16e

    .line 405
    .end local v3    # "iface":Ljava/lang/String;
    .end local v14    # "apn":Ljava/lang/String;
    .end local v17    # "ifaceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_19e
    return-void
.end method


# virtual methods
.method addNewApnRecord(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 593
    invoke-virtual {p0, p2, p1}, Lcom/motorola/server/VzwConnectivityService;->isIfaceUsedByOtherApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 596
    .local v0, "reusedIface":Z
    if-nez v0, :cond_4b

    .line 597
    const-string/jumbo v2, "VzwConnectivityService"

    const-string/jumbo v3, "new interface, rxBase=txBase=0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v1, Lcom/motorola/server/VzwConnectivityService$DataRecord;

    move-object v2, p0

    move-object v3, p2

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/motorola/server/VzwConnectivityService$DataRecord;-><init>(Lcom/motorola/server/VzwConnectivityService;Ljava/lang/String;JJ)V

    .line 605
    .local v1, "record":Lcom/motorola/server/VzwConnectivityService$DataRecord;
    :goto_19
    const-string/jumbo v2, "VzwConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "new record("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "): "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-virtual {p0, p2, p1}, Lcom/motorola/server/VzwConnectivityService;->updateIfaceApnList(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void

    .line 600
    .end local v1    # "record":Lcom/motorola/server/VzwConnectivityService$DataRecord;
    :cond_4b
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/motorola/server/VzwConnectivityService;->getLastDisconnectBase(Ljava/lang/String;I)J

    move-result-wide v4

    .line 601
    .local v4, "disconRxBase":J
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/motorola/server/VzwConnectivityService;->getLastDisconnectBase(Ljava/lang/String;I)J

    move-result-wide v6

    .line 602
    .local v6, "disconTxBase":J
    const-string/jumbo v2, "VzwConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reused interface, rxBase="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ", txBase="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v1, Lcom/motorola/server/VzwConnectivityService$DataRecord;

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/server/VzwConnectivityService$DataRecord;-><init>(Lcom/motorola/server/VzwConnectivityService;Ljava/lang/String;JJ)V

    .restart local v1    # "record":Lcom/motorola/server/VzwConnectivityService$DataRecord;
    goto :goto_19
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 3
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 109
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/motorola/server/VzwConnectivityService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 108
    return-void
.end method

.method checkLegacyNetwork(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "apnIfacePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 507
    .local v0, "abnormalReport":Z
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "apn$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 508
    .local v1, "apn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/server/VzwConnectivityService;->isLegacyNetwork()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 509
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_40

    .line 510
    const-string/jumbo v5, "VzwConnectivityService"

    const-string/jumbo v6, "legacy network, update apn as VZWINTERNET"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 512
    .local v4, "original":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 513
    .local v3, "clone":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string/jumbo v1, "VZWINTERNET"

    .line 515
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 517
    .end local v3    # "clone":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "original":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_40
    const-string/jumbo v5, "VzwConnectivityService"

    const-string/jumbo v6, "more than one link are reported abnormally in legacy cdma mode"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v0, 0x1

    .line 528
    .end local v1    # "apn":Ljava/lang/String;
    :cond_4a
    if-eqz v0, :cond_58

    .line 529
    const-string/jumbo v5, "VzwConnectivityService"

    const-string/jumbo v6, "Clear apn/iface pair. Ignore CONNECTED report for legacy link. Non-legacy link is treated as DISCONNECTED in later traffic counting"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 504
    :cond_58
    return-void

    .line 522
    .restart local v1    # "apn":Ljava/lang/String;
    :cond_59
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    .line 523
    const-string/jumbo v5, "VzwConnectivityService"

    const-string/jumbo v6, "apn is null but not legacy network."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getAPNUsageRxBytes(Ljava/lang/String;I)J
    .registers 13
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 138
    const-string/jumbo v4, "VzwConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAPNUsageRxBytes: apnName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", networkType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-wide/16 v2, 0x0

    .line 141
    .local v2, "ret":J
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3c

    .line 142
    :cond_32
    const-string/jumbo v4, "VzwConnectivityService"

    const-string/jumbo v5, "invalid null apnName"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-wide v8

    .line 146
    :cond_3c
    if-eqz p2, :cond_48

    .line 147
    const-string/jumbo v4, "VzwConnectivityService"

    const-string/jumbo v5, "not supported network type, only support ConnectivityManager.TYPE_MOBILE(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-wide v8

    .line 152
    :cond_48
    move-object v1, p1

    .line 153
    .local v1, "savedApnName":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/server/VzwConnectivityService;->mApnNameSuffix:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/server/VzwConnectivityService;->mApnNameSuffix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_60
    iget-object v4, p0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/VzwConnectivityService$DataRecord;

    .line 158
    .local v0, "rec":Lcom/motorola/server/VzwConnectivityService$DataRecord;
    if-nez v0, :cond_85

    .line 159
    const-string/jumbo v4, "VzwConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no data for this apn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-wide v8

    .line 162
    :cond_85
    invoke-virtual {v0}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->getRxBytes()J

    move-result-wide v2

    .line 163
    const-string/jumbo v4, "VzwConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "return RxBytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-wide v2
.end method

.method public getAPNUsageTxBytes(Ljava/lang/String;I)J
    .registers 13
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 172
    const-string/jumbo v4, "VzwConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAPNUsageTxBytes: apnName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", networkType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-wide/16 v2, 0x0

    .line 175
    .local v2, "ret":J
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3c

    .line 176
    :cond_32
    const-string/jumbo v4, "VzwConnectivityService"

    const-string/jumbo v5, "invalid null apnName"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-wide v8

    .line 180
    :cond_3c
    if-eqz p2, :cond_48

    .line 181
    const-string/jumbo v4, "VzwConnectivityService"

    const-string/jumbo v5, "not supported network type, only support ConnectivityManager.TYPE_MOBILE(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-wide v8

    .line 186
    :cond_48
    move-object v1, p1

    .line 187
    .local v1, "savedApnName":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/server/VzwConnectivityService;->mApnNameSuffix:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/server/VzwConnectivityService;->mApnNameSuffix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 191
    :cond_60
    iget-object v4, p0, Lcom/motorola/server/VzwConnectivityService;->mNetworkApnStats:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/VzwConnectivityService$DataRecord;

    .line 192
    .local v0, "rec":Lcom/motorola/server/VzwConnectivityService$DataRecord;
    if-nez v0, :cond_85

    .line 193
    const-string/jumbo v4, "VzwConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no data for this apn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-wide v8

    .line 196
    :cond_85
    invoke-virtual {v0}, Lcom/motorola/server/VzwConnectivityService$DataRecord;->getTxBytes()J

    move-result-wide v2

    .line 197
    const-string/jumbo v4, "VzwConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "return TxBytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-wide v2
.end method

.method getLastDisconnectBase(Ljava/lang/String;I)J
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 584
    iget-object v1, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceLastDisconBase:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 585
    .local v0, "baseData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v0, :cond_d

    .line 586
    const-wide/16 v2, 0x0

    return-wide v2

    .line 588
    :cond_d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public getNetworkInterface(I)Ljava/lang/String;
    .registers 10
    .param p1, "networkType"    # I

    .prologue
    const/4 v7, 0x0

    .line 119
    :try_start_1
    iget-object v4, p0, Lcom/motorola/server/VzwConnectivityService;->mContext:Landroid/content/Context;

    .line 120
    const-string/jumbo v5, "connectivity"

    .line 119
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 121
    .local v2, "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 122
    .local v1, "lp":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    .line 123
    .local v3, "networkInterface":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 124
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 126
    .end local v3    # "networkInterface":Ljava/lang/String;
    :cond_17
    const-string/jumbo v4, "VzwConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Interface Name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    .line 127
    return-object v3

    .line 128
    .end local v1    # "lp":Landroid/net/LinkProperties;
    .end local v2    # "mConnMgr":Landroid/net/ConnectivityManager;
    :catch_32
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "VzwConnectivityService"

    const-string/jumbo v5, "Error Getting InterfaceName"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v7
.end method

.method getProcTrafficBytes(Ljava/lang/String;I)J
    .registers 20
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 612
    const-wide/16 v12, 0x0

    .line 614
    .local v12, "ret":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/server/VzwConnectivityService;->mIfaceStats:Ljava/io/File;

    if-eqz v14, :cond_b6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/server/VzwConnectivityService;->mIfaceStats:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_b6

    .line 623
    const/16 v14, 0xa

    new-array v14, v14, [Ljava/lang/String;

    const-string/jumbo v15, "iface"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-string/jumbo v15, "active"

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const-string/jumbo v15, "snap_rx_bytes"

    const/16 v16, 0x2

    aput-object v15, v14, v16

    .line 624
    const-string/jumbo v15, "snap_rx_packets"

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const-string/jumbo v15, "snap_tx_bytes"

    const/16 v16, 0x4

    aput-object v15, v14, v16

    const-string/jumbo v15, "snap_tx_packets"

    const/16 v16, 0x5

    aput-object v15, v14, v16

    const-string/jumbo v15, "rx_bytes"

    const/16 v16, 0x6

    aput-object v15, v14, v16

    .line 625
    const-string/jumbo v15, "rx_packets"

    const/16 v16, 0x7

    aput-object v15, v14, v16

    const-string/jumbo v15, "tx_bytes"

    const/16 v16, 0x8

    aput-object v15, v14, v16

    const-string/jumbo v15, "tx_packets"

    const/16 v16, 0x9

    aput-object v15, v14, v16

    .line 623
    invoke-static {v14}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 626
    .local v6, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 627
    .local v11, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 629
    .local v8, "parsed":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 631
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_69
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/server/VzwConnectivityService;->mIfaceStats:Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_77
    .catch Ljava/lang/NullPointerException; {:try_start_69 .. :try_end_77} :catch_127
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_77} :catch_105
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_77} :catch_e3
    .catchall {:try_start_69 .. :try_end_77} :catchall_14a

    .line 634
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    :cond_77
    :try_start_77
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_b1

    .line 635
    invoke-static {v7, v11}, Lcom/motorola/server/VzwConnectivityService;->splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 636
    invoke-static {v6, v11, v8}, Lcom/motorola/server/VzwConnectivityService;->parseLine(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 638
    const-string/jumbo v14, "iface"

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_77

    .line 641
    if-nez p2, :cond_d0

    .line 642
    const-string/jumbo v14, "snap_rx_bytes"

    invoke-static {v8, v14}, Lcom/motorola/server/VzwConnectivityService;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    .line 648
    :goto_9b
    const-string/jumbo v14, "active"

    invoke-static {v8, v14}, Lcom/motorola/server/VzwConnectivityService;->getParsedInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_d8

    const/4 v2, 0x1

    .line 649
    .local v2, "active":Z
    :goto_a5
    if-eqz v2, :cond_b1

    .line 650
    if-nez p2, :cond_da

    .line 651
    const-string/jumbo v14, "rx_bytes"

    invoke-static {v8, v14}, Lcom/motorola/server/VzwConnectivityService;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J
    :try_end_af
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_af} :catch_152
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_af} :catch_155
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_af} :catch_158
    .catchall {:try_start_77 .. :try_end_af} :catchall_14f

    move-result-wide v14

    add-long/2addr v12, v14

    .line 668
    .end local v2    # "active":Z
    :cond_b1
    :goto_b1
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v9, v10

    .line 671
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :goto_b5
    return-wide v12

    .line 615
    .end local v6    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "parsed":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/server/VzwConnectivityService;->mIfaceStats:Ljava/io/File;

    if-nez v14, :cond_c6

    .line 616
    const-string/jumbo v14, "VzwConnectivityService"

    const-string/jumbo v15, "mIfaceStats = null, failed to open file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_c5
    return-wide v12

    .line 618
    :cond_c6
    const-string/jumbo v14, "VzwConnectivityService"

    const-string/jumbo v15, "/proc/net/xt_qtaguid/iface_stat_all does not exist"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 644
    .restart local v6    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "parsed":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d0
    :try_start_d0
    const-string/jumbo v14, "snap_tx_bytes"

    invoke-static {v8, v14}, Lcom/motorola/server/VzwConnectivityService;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_9b

    .line 648
    :cond_d8
    const/4 v2, 0x0

    goto :goto_a5

    .line 653
    .restart local v2    # "active":Z
    :cond_da
    const-string/jumbo v14, "tx_bytes"

    invoke-static {v8, v14}, Lcom/motorola/server/VzwConnectivityService;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J
    :try_end_e0
    .catch Ljava/lang/NullPointerException; {:try_start_d0 .. :try_end_e0} :catch_152
    .catch Ljava/lang/NumberFormatException; {:try_start_d0 .. :try_end_e0} :catch_155
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_e0} :catch_158
    .catchall {:try_start_d0 .. :try_end_e0} :catchall_14f

    move-result-wide v14

    add-long/2addr v12, v14

    goto :goto_b1

    .line 664
    .end local v2    # "active":Z
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_e3
    move-exception v3

    .line 665
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_e4
    :try_start_e4
    const-string/jumbo v14, "VzwConnectivityService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "problem parsing stats: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_101
    .catchall {:try_start_e4 .. :try_end_101} :catchall_14a

    .line 668
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_b5

    .line 661
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_105
    move-exception v5

    .line 662
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/NumberFormatException;
    :goto_106
    :try_start_106
    const-string/jumbo v14, "VzwConnectivityService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "problem parsing stats: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_123
    .catchall {:try_start_106 .. :try_end_123} :catchall_14a

    .line 668
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_b5

    .line 658
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_127
    move-exception v4

    .line 659
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/NullPointerException;
    :goto_128
    :try_start_128
    const-string/jumbo v14, "VzwConnectivityService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "problem parsing stats: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_145
    .catchall {:try_start_128 .. :try_end_145} :catchall_14a

    .line 668
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_b5

    .line 667
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catchall_14a
    move-exception v14

    .line 668
    :goto_14b
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 667
    throw v14

    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_14f
    move-exception v14

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    goto :goto_14b

    .line 658
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_152
    move-exception v4

    .restart local v4    # "e":Ljava/lang/NullPointerException;
    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_128

    .line 661
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_155
    move-exception v5

    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_106

    .line 664
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_158
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_e4
.end method

.method isApnUseOneIface(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 571
    const/4 v1, 0x0

    .line 573
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService;->mApnIfacesList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 574
    .local v0, "ifaceList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 575
    const/4 v1, 0x1

    .line 580
    :goto_17
    return v1

    .line 577
    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method isIfaceUsedByOtherApn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    .line 552
    const/4 v1, 0x0

    .line 554
    .local v1, "usedByOtherApn":Z
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceApnsList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 555
    const/4 v2, 0x0

    return v2

    .line 557
    :cond_b
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceApnsList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 558
    .local v0, "apnList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 560
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v1, 0x0

    .line 567
    :goto_21
    return v1

    .line 560
    :cond_22
    const/4 v1, 0x1

    goto :goto_21

    .line 563
    :cond_24
    const/4 v1, 0x1

    goto :goto_21
.end method

.method isLegacyNetwork()Z
    .registers 4

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, "legacyNetwork":Z
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 540
    .local v1, "radioType":I
    const/4 v2, 0x7

    if-eq v1, v2, :cond_d

    .line 541
    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 545
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 548
    :cond_e
    return v0

    .line 542
    :cond_f
    const/4 v2, 0x6

    if-eq v1, v2, :cond_d

    .line 543
    const/16 v2, 0xc

    if-eq v1, v2, :cond_d

    .line 544
    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    goto :goto_d
.end method

.method updateIfaceApnList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService;->mIfaceApnsList:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/server/VzwConnectivityService;->updateKeyValuesList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 483
    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService;->mApnIfacesList:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1, v0}, Lcom/motorola/server/VzwConnectivityService;->updateKeyValuesList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 481
    return-void
.end method

.method updateKeyValuesList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p3, "keyValuesList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v0, 0x1

    .line 489
    .local v0, "needNewPair":Z
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 490
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 491
    const/4 v0, 0x0

    .line 492
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 493
    .local v1, "valuesList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v1    # "valuesList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_17
    if-eqz v0, :cond_24

    .line 498
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 499
    .restart local v1    # "valuesList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .end local v1    # "valuesList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_24
    return-void
.end method

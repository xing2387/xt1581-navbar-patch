.class public Lcom/android/server/connectivity/DnsEventListenerService;
.super Landroid/net/metrics/IDnsEventListener$Stub;
.source "DnsEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DnsEventListenerService$1;,
        Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MAX_LOOKUPS_PER_DNS_EVENT:I = 0x64

.field public static final SERVICE_NAME:Ljava/lang/String; = "dns_listener"

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private mEventBatches:Ljava/util/SortedMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/DnsEventListenerService;)Ljava/util/SortedMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .registers 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/connectivity/DnsEventListenerService;->maybeLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/android/server/connectivity/DnsEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/DnsEventListenerService;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/net/metrics/IDnsEventListener$Stub;-><init>()V

    .line 99
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    .line 106
    new-instance v1, Lcom/android/server/connectivity/DnsEventListenerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/DnsEventListenerService$1;-><init>(Lcom/android/server/connectivity/DnsEventListenerService;)V

    iput-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 120
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 123
    .local v0, "request":Landroid/net/NetworkRequest;
    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 124
    iget-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 118
    return-void
.end method

.method private static maybeLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-object v0, Lcom/android/server/connectivity/DnsEventListenerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method private static maybeVerboseLog(Ljava/lang/String;)V
    .registers 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 155
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 142
    :try_start_1
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "  "

    invoke-direct {v2, p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 143
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/connectivity/DnsEventListenerService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 145
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "batch$iterator":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;

    .line 146
    .local v0, "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_43

    goto :goto_2f

    .end local v0    # "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    .end local v1    # "batch$iterator":Ljava/util/Iterator;
    .end local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_43
    move-exception v3

    monitor-exit p0

    throw v3

    .line 148
    .restart local v1    # "batch$iterator":Ljava/util/Iterator;
    .restart local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_46
    :try_start_46
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_43

    monitor-exit p0

    .line 141
    return-void
.end method

.method public declared-synchronized onDnsEvent(IIII)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I

    .prologue
    monitor-enter p0

    .line 130
    :try_start_1
    const-string/jumbo v1, "onDnsEvent(%d, %d, %d, %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 130
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/DnsEventListenerService;->maybeVerboseLog(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;

    .line 134
    .local v0, "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    if-nez v0, :cond_46

    .line 135
    new-instance v0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;

    .end local v0    # "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    invoke-direct {v0, p1}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;-><init>(I)V

    .line 136
    .restart local v0    # "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    iget-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_46
    int-to-byte v1, p2

    int-to-byte v2, p3

    invoke-virtual {v0, v1, v2, p4}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->addResult(BBI)V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    monitor-exit p0

    .line 129
    return-void

    .end local v0    # "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    :catchall_4d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

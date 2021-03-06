.class final Lcom/android/server/tv/TvInputManagerService$ClientState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientState"
.end annotation


# instance fields
.field private clientToken:Landroid/os/IBinder;

.field private final sessionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field private final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputManagerService$ClientState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    return v0
.end method

.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "clientToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .prologue
    .line 2049
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    .line 2050
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    .line 2051
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    .line 2049
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    .prologue
    .line 2060
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2061
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v4, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 2064
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 2065
    .local v0, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-eqz v0, :cond_3b

    .line 2066
    :goto_1d
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3b

    .line 2067
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2068
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    const/16 v6, 0x3e8

    .line 2067
    invoke-static {v4, v2, v6, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap14(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_38

    goto :goto_1d

    .line 2060
    .end local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_38
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2071
    .restart local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .restart local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_3b
    const/4 v2, 0x0

    :try_start_3c
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_38

    monitor-exit v3

    .line 2059
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.class Lcom/android/server/ConnectivityService$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# static fields
.field private static final synthetic -com-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$ConnectivityService$NetworkRequestType:[I

.field private final mBinder:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field mPendingIntentSent:Z

.field final mPid:I

.field private final mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

.field final mUid:I

.field final messenger:Landroid/os/Messenger;

.field final request:Landroid/net/NetworkRequest;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private static synthetic -getcom-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->-com-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->-com-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/ConnectivityService$NetworkRequestType;->values()[Lcom/android/server/ConnectivityService$NetworkRequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->LISTEN:Lcom/android/server/ConnectivityService$NetworkRequestType;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->-com-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;Lcom/android/server/ConnectivityService$NetworkRequestType;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "r"    # Landroid/net/NetworkRequest;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "type"    # Lcom/android/server/ConnectivityService$NetworkRequestType;

    .prologue
    const/4 v0, 0x0

    .line 3902
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3903
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 3904
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 3905
    iput-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 3906
    iput-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 3907
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 3908
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 3909
    iput-object p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

    .line 3910
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 3902
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Lcom/android/server/ConnectivityService$NetworkRequestType;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "m"    # Landroid/os/Messenger;
    .param p3, "r"    # Landroid/net/NetworkRequest;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "type"    # Lcom/android/server/ConnectivityService$NetworkRequestType;

    .prologue
    .line 3913
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    .line 3914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3915
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 3916
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 3917
    iput-object p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 3918
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 3919
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 3920
    iput-object p5, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

    .line 3921
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 3922
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 3925
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_26

    .line 3913
    :goto_25
    return-void

    .line 3926
    :catch_26
    move-exception v0

    .line 3927
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->binderDied()V

    goto :goto_25
.end method

.method private enforceRequestCountLimit()V
    .registers 6

    .prologue
    .line 3932
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get13(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v2

    monitor-enter v2

    .line 3933
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get13(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 3934
    .local v0, "networkRequests":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_26

    .line 3935
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Too many NetworkRequests filed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_23

    .line 3932
    .end local v0    # "networkRequests":I
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3937
    .restart local v0    # "networkRequests":I
    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get13(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_23

    monitor-exit v2

    .line 3931
    return-void
.end method

.method private typeString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3942
    invoke-static {}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->-getcom-android-server-ConnectivityService$NetworkRequestTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 3947
    const-string/jumbo v0, "unknown type"

    return-object v0

    .line 3943
    :pswitch_13
    const-string/jumbo v0, "Listen"

    return-object v0

    .line 3944
    :pswitch_17
    const-string/jumbo v0, "Request"

    return-object v0

    .line 3945
    :pswitch_1b
    const-string/jumbo v0, "Track default"

    return-object v0

    .line 3942
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 3958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConnectivityService NetworkRequestInfo binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3959
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 3958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3959
    const-string/jumbo v1, ", "

    .line 3958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3959
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 3958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3959
    const-string/jumbo v1, ")"

    .line 3958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    .line 3960
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 3957
    return-void
.end method

.method public isRequest()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3978
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

    sget-object v2, Lcom/android/server/ConnectivityService$NetworkRequestType;->TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;

    if-eq v1, v2, :cond_d

    .line 3979
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mType:Lcom/android/server/ConnectivityService$NetworkRequestType;

    sget-object v2, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    if-ne v1, v2, :cond_e

    .line 3978
    :cond_d
    :goto_d
    return v0

    .line 3979
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->typeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3984
    const-string/jumbo v1, " from uid/pid:"

    .line 3983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3984
    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 3983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3984
    const-string/jumbo v1, "/"

    .line 3983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3984
    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 3983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3985
    const-string/jumbo v1, " for "

    .line 3983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3985
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 3983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3986
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_44

    const-string/jumbo v0, ""

    .line 3983
    :goto_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3986
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " to trigger "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b
.end method

.method unlinkDeathRecipient()V
    .registers 3

    .prologue
    .line 3952
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    .line 3953
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3951
    :cond_a
    return-void
.end method

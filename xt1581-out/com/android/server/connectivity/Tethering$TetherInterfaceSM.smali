.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherInterfaceSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;
    }
.end annotation


# static fields
.field private static final BASE_IFACE:I = 0x50064

.field static final CMD_CELL_DUN_ERROR:I = 0x5006a

.field static final CMD_INTERFACE_DOWN:I = 0x50068

.field static final CMD_INTERFACE_UP:I = 0x50069

.field static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x5006c

.field static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x5006b

.field static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0x5006f

.field static final CMD_START_TETHERING_ERROR:I = 0x5006d

.field static final CMD_STOP_TETHERING_ERROR:I = 0x5006e

.field static final CMD_TETHER_CONNECTION_CHANGED:I = 0x50070

.field static final CMD_TETHER_MODE_DEAD:I = 0x50065

.field static final CMD_TETHER_REQUESTED:I = 0x50066

.field static final CMD_TETHER_UNREQUESTED:I = 0x50067


# instance fields
.field private mAvailable:Z

.field private mDefaultState:Lcom/android/internal/util/State;

.field mIfaceName:Ljava/lang/String;

.field private mInitialState:Lcom/android/internal/util/State;

.field mLastError:I

.field mMyUpstreamIfaceName:Ljava/lang/String;

.field private mStartingState:Lcom/android/internal/util/State;

.field private mTethered:Z

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mUnavailableState:Lcom/android/internal/util/State;

.field mUsb:Z

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V
    .registers 2
    .param p1, "available"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setAvailable(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V
    .registers 2
    .param p1, "error"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V
    .registers 2
    .param p1, "tethered"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setTethered(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "usb"    # Z

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 1128
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1129
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    .line 1130
    iput-boolean p4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    .line 1131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V

    .line 1133
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    .line 1134
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/State;)V

    .line 1135
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/State;

    .line 1136
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/State;)V

    .line 1137
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/State;

    .line 1138
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/State;)V

    .line 1139
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;

    .line 1140
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/State;)V

    .line 1142
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1127
    return-void
.end method

.method private setAvailable(Z)V
    .registers 4
    .param p1, "available"    # Z

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1187
    :try_start_7
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mAvailable:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    .line 1185
    return-void

    .line 1186
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setLastError(I)V
    .registers 5
    .param p1, "error"    # I

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1167
    :try_start_7
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1170
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v0, :cond_19

    .line 1173
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering;->-wrap1(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v1

    .line 1165
    return-void

    .line 1166
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setTethered(Z)V
    .registers 4
    .param p1, "tethered"    # Z

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1199
    :try_start_7
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTethered:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    .line 1197
    return-void

    .line 1198
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getLastError()I
    .registers 3

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1161
    :try_start_7
    iget v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    .line 1160
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isAvailable()Z
    .registers 3

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1181
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mAvailable:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    .line 1180
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isErrored()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1204
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1205
    :try_start_8
    iget v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_f

    if-eqz v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    monitor-exit v1

    return v0

    .line 1204
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isTethered()Z
    .registers 3

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1193
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTethered:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    .line 1192
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setLastErrorAndTransitionToInitialState(I)V
    .registers 3
    .param p1, "error"    # I

    .prologue
    .line 1472
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V

    .line 1473
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1471
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1146
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1147
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 1149
    .local v0, "current":Lcom/android/internal/util/IState;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "InitialState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1150
    :cond_3b
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_53

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "StartingState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1151
    :cond_53
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_6b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "TetheredState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1152
    :cond_6b
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_83

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "UnavailableState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1153
    :cond_83
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mAvailable:Z

    if-eqz v2, :cond_9b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - Available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    :cond_9b
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTethered:Z

    if-eqz v2, :cond_b3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - Tethered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1155
    :cond_b3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - lastError ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1156
    return-object v1
.end method

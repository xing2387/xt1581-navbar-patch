.class public Lcom/motorola/server/display/PanelsService;
.super Lcom/android/server/SystemService;
.source "PanelsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/display/PanelsService$BinderService;,
        Lcom/motorola/server/display/PanelsService$LocalService;,
        Lcom/motorola/server/display/PanelsService$PanelHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HIGH_BRIGHT_COLOR_MODE:I = 0x1

.field private static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final MSG_UPDATE_PANEL_MODE:I = 0x1

.field public static final PANEL_ID_PRIMARY:I = 0x0

.field public static final PANEL_MODE_HIGH_BRIGHT:I = 0x3

.field public static final PANEL_MODE_NATIVE:I = 0x2

.field public static final PANEL_MODE_NORMAL:I = 0x0

.field public static final PANEL_MODE_POWER_SAVING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PanelsService"


# instance fields
.field private mCurrentMode:I

.field private mHandler:Lcom/motorola/server/display/PanelsService$PanelHandler;

.field private final mHbmDailyLimit:I

.field private mHbmDailyUsage:J

.field private final mHbmSessionLimit:I

.field private mHbmSessionStart:J

.field private mHighBright:Z

.field private mLowPower:Z

.field private mNative:J

.field private mSavedColorMode:I

.field private mScreenOnceOffAfterLastHbmOn:Z

.field private mScreenState:I

.field private mVideoState:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/motorola/server/display/PanelsService;->DEBUG:Z

    return v0
.end method

.method static synthetic -set0(Lcom/motorola/server/display/PanelsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/motorola/server/display/PanelsService;->mHighBright:Z

    return p1
.end method

.method static synthetic -set1(Lcom/motorola/server/display/PanelsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/motorola/server/display/PanelsService;->mLowPower:Z

    return p1
.end method

.method static synthetic -set2(Lcom/motorola/server/display/PanelsService;I)I
    .registers 2

    iput p1, p0, Lcom/motorola/server/display/PanelsService;->mScreenState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/motorola/server/display/PanelsService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/display/PanelsService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/motorola/server/display/PanelsService;I)V
    .registers 2
    .param p1, "delayMillis"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/display/PanelsService;->sendUpdatePanelMode(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/motorola/server/display/PanelsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/motorola/server/display/PanelsService;->updatePanelMode()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 36
    :goto_b
    sput-boolean v0, Lcom/motorola/server/display/PanelsService;->DEBUG:Z

    .line 34
    return-void

    :cond_e
    move v0, v1

    .line 37
    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 53
    iput v1, p0, Lcom/motorola/server/display/PanelsService;->mCurrentMode:I

    .line 63
    iput v1, p0, Lcom/motorola/server/display/PanelsService;->mSavedColorMode:I

    .line 82
    invoke-static {p0}, Lcom/motorola/server/display/PanelsService;->init_native(Lcom/motorola/server/display/PanelsService;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/server/display/PanelsService;->mNative:J

    .line 83
    new-instance v1, Lcom/motorola/server/display/PanelsService$PanelHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/server/display/PanelsService$PanelHandler;-><init>(Lcom/motorola/server/display/PanelsService;Lcom/motorola/server/display/PanelsService$PanelHandler;)V

    iput-object v1, p0, Lcom/motorola/server/display/PanelsService;->mHandler:Lcom/motorola/server/display/PanelsService$PanelHandler;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10e00cd

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionLimit:I

    .line 89
    const v1, 0x10e00ce

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/display/PanelsService;->mHbmDailyLimit:I

    .line 90
    sget-boolean v1, Lcom/motorola/server/display/PanelsService;->DEBUG:Z

    if-eqz v1, :cond_59

    .line 91
    const-string/jumbo v1, "PanelsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " daily="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/server/display/PanelsService;->mHbmDailyLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/server/display/PanelsService;->mScreenOnceOffAfterLastHbmOn:Z

    .line 96
    invoke-direct {p0}, Lcom/motorola/server/display/PanelsService;->updatePanelMode()V

    .line 79
    return-void
.end method

.method private allowHbm()Z
    .registers 8

    .prologue
    const-wide/32 v4, 0x5265c00

    const/4 v6, 0x0

    .line 199
    iget-boolean v2, p0, Lcom/motorola/server/display/PanelsService;->mScreenOnceOffAfterLastHbmOn:Z

    if-nez v2, :cond_9

    .line 200
    return v6

    .line 201
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 204
    .local v0, "now":J
    iget-wide v2, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionStart:J

    div-long/2addr v2, v4

    div-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_27

    .line 205
    sget-boolean v2, Lcom/motorola/server/display/PanelsService;->DEBUG:Z

    if-eqz v2, :cond_23

    .line 206
    const-string/jumbo v2, "PanelsService"

    const-string/jumbo v3, "reset hbm daily usage"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_23
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/motorola/server/display/PanelsService;->mHbmDailyUsage:J

    .line 211
    :cond_27
    iget v2, p0, Lcom/motorola/server/display/PanelsService;->mHbmDailyLimit:I

    if-lez v2, :cond_35

    iget-wide v2, p0, Lcom/motorola/server/display/PanelsService;->mHbmDailyUsage:J

    iget v4, p0, Lcom/motorola/server/display/PanelsService;->mHbmDailyLimit:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_35

    .line 212
    return v6

    .line 215
    :cond_35
    iget v2, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionLimit:I

    if-lez v2, :cond_4a

    .line 216
    iget v2, p0, Lcom/motorola/server/display/PanelsService;->mCurrentMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4a

    .line 217
    iget-wide v2, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionStart:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionLimit:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4a

    return v6

    .line 219
    :cond_4a
    const/4 v2, 0x1

    return v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 238
    const-string/jumbo v0, "Current Panel Service state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " current mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mCurrentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " Screen state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mScreenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " Low power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/server/display/PanelsService;->mLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " High bright: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/server/display/PanelsService;->mHighBright:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " Video state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mVideoState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " HBM session limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " HBM daily limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mHbmDailyLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " HBM session start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private static native finalize_native(J)V
.end method

.method private static native getColorMode_native()I
.end method

.method private static native init_native(Lcom/motorola/server/display/PanelsService;)J
.end method

.method private notifyVideoState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 132
    sget-boolean v0, Lcom/motorola/server/display/PanelsService;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "PanelsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyVideoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1e
    iput p1, p0, Lcom/motorola/server/display/PanelsService;->mVideoState:I

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/server/display/PanelsService;->sendUpdatePanelMode(I)V

    .line 131
    return-void
.end method

.method private sendUpdatePanelMode(I)V
    .registers 6
    .param p1, "delayMillis"    # I

    .prologue
    .line 138
    iget-object v1, p0, Lcom/motorola/server/display/PanelsService;->mHandler:Lcom/motorola/server/display/PanelsService$PanelHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/server/display/PanelsService$PanelHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/server/display/PanelsService;->mHandler:Lcom/motorola/server/display/PanelsService$PanelHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/motorola/server/display/PanelsService$PanelHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 137
    return-void
.end method

.method private static native setColorMode_native(I)V
.end method

.method private static native setMode_native(JII)V
.end method

.method private updatePanelMode()V
    .registers 10

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "mode":I
    sget-boolean v1, Lcom/motorola/server/display/PanelsService;->DEBUG:Z

    if-eqz v1, :cond_58

    .line 157
    const-string/jumbo v1, "PanelsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screen state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/server/display/PanelsService;->mScreenState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    const-string/jumbo v3, ", mScreenOnceOffAfterLastHbmOn="

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    iget-boolean v3, p0, Lcom/motorola/server/display/PanelsService;->mScreenOnceOffAfterLastHbmOn:Z

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    const-string/jumbo v3, ", lower power="

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    iget-boolean v3, p0, Lcom/motorola/server/display/PanelsService;->mLowPower:Z

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    const-string/jumbo v3, ", high bright="

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    iget-boolean v3, p0, Lcom/motorola/server/display/PanelsService;->mHighBright:Z

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    const-string/jumbo v3, ", video state="

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    iget v3, p0, Lcom/motorola/server/display/PanelsService;->mVideoState:I

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_58
    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mScreenState:I

    if-ne v1, v4, :cond_a1

    .line 164
    const/4 v0, 0x0

    .line 165
    iput-boolean v4, p0, Lcom/motorola/server/display/PanelsService;->mScreenOnceOffAfterLastHbmOn:Z

    .line 176
    :cond_5f
    :goto_5f
    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mCurrentMode:I

    if-eq v1, v0, :cond_a0

    .line 177
    if-ne v0, v5, :cond_bf

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionStart:J

    .line 180
    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionLimit:I

    invoke-direct {p0, v1}, Lcom/motorola/server/display/PanelsService;->sendUpdatePanelMode(I)V

    .line 182
    invoke-static {}, Lcom/motorola/server/display/PanelsService;->getColorMode_native()I

    move-result v1

    iput v1, p0, Lcom/motorola/server/display/PanelsService;->mSavedColorMode:I

    .line 183
    invoke-static {v4}, Lcom/motorola/server/display/PanelsService;->setColorMode_native(I)V

    .line 184
    iput-boolean v8, p0, Lcom/motorola/server/display/PanelsService;->mScreenOnceOffAfterLastHbmOn:Z

    .line 192
    :cond_7b
    :goto_7b
    sget-boolean v1, Lcom/motorola/server/display/PanelsService;->DEBUG:Z

    if-eqz v1, :cond_99

    const-string/jumbo v1, "PanelsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set mode to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_99
    iget-wide v2, p0, Lcom/motorola/server/display/PanelsService;->mNative:J

    invoke-static {v2, v3, v8, v0}, Lcom/motorola/server/display/PanelsService;->setMode_native(JII)V

    .line 194
    iput v0, p0, Lcom/motorola/server/display/PanelsService;->mCurrentMode:I

    .line 153
    :cond_a0
    return-void

    .line 166
    :cond_a1
    iget-boolean v1, p0, Lcom/motorola/server/display/PanelsService;->mLowPower:Z

    if-eqz v1, :cond_a7

    .line 167
    const/4 v0, 0x1

    goto :goto_5f

    .line 168
    :cond_a7
    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mScreenState:I

    if-ne v1, v5, :cond_ad

    .line 169
    const/4 v0, 0x1

    goto :goto_5f

    .line 170
    :cond_ad
    iget-boolean v1, p0, Lcom/motorola/server/display/PanelsService;->mHighBright:Z

    if-eqz v1, :cond_b9

    invoke-direct {p0}, Lcom/motorola/server/display/PanelsService;->allowHbm()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 171
    const/4 v0, 0x3

    goto :goto_5f

    .line 172
    :cond_b9
    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mVideoState:I

    if-eqz v1, :cond_5f

    .line 173
    const/4 v0, 0x1

    goto :goto_5f

    .line 185
    :cond_bf
    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mCurrentMode:I

    if-ne v1, v5, :cond_7b

    .line 187
    iget-wide v2, p0, Lcom/motorola/server/display/PanelsService;->mHbmDailyUsage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/server/display/PanelsService;->mHbmSessionStart:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/motorola/server/display/PanelsService;->mHbmDailyUsage:J

    .line 189
    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mSavedColorMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7b

    iget v1, p0, Lcom/motorola/server/display/PanelsService;->mSavedColorMode:I

    invoke-static {v1}, Lcom/motorola/server/display/PanelsService;->setColorMode_native(I)V

    goto :goto_7b
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/motorola/server/display/PanelsService;->mNative:J

    invoke-static {v0, v1}, Lcom/motorola/server/display/PanelsService;->finalize_native(J)V

    .line 102
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    .line 100
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 107
    const-class v0, Lcom/motorola/server/display/PanelsService$LocalService;

    new-instance v1, Lcom/motorola/server/display/PanelsService$LocalService;

    invoke-direct {v1, p0}, Lcom/motorola/server/display/PanelsService$LocalService;-><init>(Lcom/motorola/server/display/PanelsService;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/server/display/PanelsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 108
    const-string/jumbo v0, "panel"

    new-instance v1, Lcom/motorola/server/display/PanelsService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/server/display/PanelsService$BinderService;-><init>(Lcom/motorola/server/display/PanelsService;Lcom/motorola/server/display/PanelsService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/server/display/PanelsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 106
    return-void
.end method

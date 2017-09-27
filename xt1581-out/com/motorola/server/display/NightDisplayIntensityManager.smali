.class public Lcom/motorola/server/display/NightDisplayIntensityManager;
.super Ljava/lang/Object;
.source "NightDisplayIntensityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;
    }
.end annotation


# static fields
.field private static final ENABLE_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NightDisplayIntensityManager"

.field private static mInstance:Lcom/motorola/server/display/NightDisplayIntensityManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntensity:F

.field private mListener:Lcom/motorola/server/display/NightDisplayIntensityListener;

.field private mNightDisplayIntensityObserver:Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;


# direct methods
.method static synthetic -get0(Lcom/motorola/server/display/NightDisplayIntensityManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/motorola/server/display/NightDisplayIntensityManager;)Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;
    .registers 2

    iget-object v0, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mNightDisplayIntensityObserver:Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/motorola/server/display/NightDisplayIntensityManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/motorola/server/display/NightDisplayIntensityManager;->updateIntensity()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mContext:Landroid/content/Context;

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mIntensity:F

    .line 62
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/server/display/NightDisplayIntensityManager;
    .registers 2

    .prologue
    const-class v1, Lcom/motorola/server/display/NightDisplayIntensityManager;

    monitor-enter v1

    .line 71
    :try_start_3
    sget-object v0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mInstance:Lcom/motorola/server/display/NightDisplayIntensityManager;

    if-nez v0, :cond_e

    .line 72
    new-instance v0, Lcom/motorola/server/display/NightDisplayIntensityManager;

    invoke-direct {v0}, Lcom/motorola/server/display/NightDisplayIntensityManager;-><init>()V

    sput-object v0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mInstance:Lcom/motorola/server/display/NightDisplayIntensityManager;

    .line 74
    :cond_e
    sget-object v0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mInstance:Lcom/motorola/server/display/NightDisplayIntensityManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateIntensity()V
    .registers 5

    .prologue
    .line 121
    iget-object v1, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mListener:Lcom/motorola/server/display/NightDisplayIntensityListener;

    if-eqz v1, :cond_1c

    .line 122
    iget-object v1, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "night_display_intensity"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 123
    invoke-static {v0, v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    iput v1, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mIntensity:F

    .line 127
    iget-object v1, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mListener:Lcom/motorola/server/display/NightDisplayIntensityListener;

    iget v2, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mIntensity:F

    invoke-interface {v1, v2}, Lcom/motorola/server/display/NightDisplayIntensityListener;->onIntensityChanged(F)V

    .line 119
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1c
    return-void
.end method


# virtual methods
.method public getIntensity()F
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mIntensity:F

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/motorola/server/display/NightDisplayIntensityListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/motorola/server/display/NightDisplayIntensityListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mListener:Lcom/motorola/server/display/NightDisplayIntensityListener;

    .line 86
    new-instance v0, Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;-><init>(Lcom/motorola/server/display/NightDisplayIntensityManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mNightDisplayIntensityObserver:Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;

    .line 87
    iget-object v0, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mNightDisplayIntensityObserver:Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;

    invoke-virtual {v0}, Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;->observe()V

    .line 80
    return-void
.end method

.method public setListener(Lcom/motorola/server/display/NightDisplayIntensityListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/motorola/server/display/NightDisplayIntensityListener;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/motorola/server/display/NightDisplayIntensityManager;->mListener:Lcom/motorola/server/display/NightDisplayIntensityListener;

    .line 141
    return-void
.end method

.class public Lcom/motorola/server/policy/SingleHandController;
.super Ljava/lang/Object;
.source "SingleHandController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/policy/SingleHandController$SingleHandSettingObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleHandController"

.field private static final VIBRATION_DURATION:I = 0x1e

.field private static mGshModeEntered:Z


# instance fields
.field private final ENABLE_GSH_DEBUG:Z

.field private final isSinglehandSupport:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSingleHandServiceAction:Ljava/lang/String;

.field private mSingleHandSettingObserver:Lcom/motorola/server/policy/SingleHandController$SingleHandSettingObserver;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -wrap0(Lcom/motorola/server/policy/SingleHandController;)V
    .registers 1

    invoke-direct {p0}, Lcom/motorola/server/policy/SingleHandController;->updateSingleHandSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/server/policy/SingleHandController;->mGshModeEntered:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Vibrator;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "vibrator"    # Landroid/os/Vibrator;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Lcom/motorola/server/policy/SingleHandController;->ENABLE_GSH_DEBUG:Z

    .line 65
    const-string/jumbo v0, "ro.lenovo.single_hand"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/server/policy/SingleHandController;->isSinglehandSupport:Z

    .line 96
    iput-object p1, p0, Lcom/motorola/server/policy/SingleHandController;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/motorola/server/policy/SingleHandController;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p3, p0, Lcom/motorola/server/policy/SingleHandController;->mVibrator:Landroid/os/Vibrator;

    .line 95
    return-void

    .line 55
    :cond_28
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private exitGsh()V
    .registers 7

    .prologue
    .line 149
    iget-object v3, p0, Lcom/motorola/server/policy/SingleHandController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 150
    .local v2, "orientation":I
    iget-boolean v3, p0, Lcom/motorola/server/policy/SingleHandController;->ENABLE_GSH_DEBUG:Z

    if-eqz v3, :cond_2a

    .line 151
    const-string/jumbo v3, "SingleHandController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in exitGsh rotation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2a
    const/4 v3, 0x2

    if-eq v2, v3, :cond_4e

    .line 155
    invoke-direct {p0}, Lcom/motorola/server/policy/SingleHandController;->getExplicitSingleHandServiceIntent()Landroid/content/Intent;

    move-result-object v1

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_4e

    .line 158
    :try_start_33
    iget-boolean v3, p0, Lcom/motorola/server/policy/SingleHandController;->ENABLE_GSH_DEBUG:Z

    if-eqz v3, :cond_40

    .line 159
    const-string/jumbo v3, "SingleHandController"

    const-string/jumbo v4, "leave global single hand mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_40
    iget-object v3, p0, Lcom/motorola/server/policy/SingleHandController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 163
    iget-object v3, p0, Lcom/motorola/server/policy/SingleHandController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4e} :catch_4f

    .line 148
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4e
    :goto_4e
    return-void

    .line 164
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_4f
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SingleHandController"

    const-string/jumbo v4, "Exception occured here:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e
.end method

.method private getExplicitSingleHandServiceIntent()Landroid/content/Intent;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 175
    iget-object v10, p0, Lcom/motorola/server/policy/SingleHandController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 176
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    iget-object v10, p0, Lcom/motorola/server/policy/SingleHandController;->mSingleHandServiceAction:Ljava/lang/String;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v3, "implicitIntent":Landroid/content/Intent;
    invoke-virtual {v5, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 179
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .line 181
    .local v7, "retVal":Landroid/content/Intent;
    if-eqz v6, :cond_52

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_52

    .line 182
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_52

    .line 183
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 184
    .local v8, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_53

    .line 185
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_53

    .line 186
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_53

    .line 187
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 188
    .local v4, "packageName":Ljava/lang/String;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 189
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v9, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 192
    move-object v7, v9

    .line 197
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v7    # "retVal":Landroid/content/Intent;
    .end local v8    # "serviceInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "serviceIntent":Landroid/content/Intent;
    :cond_52
    return-object v7

    .line 182
    .restart local v2    # "i":I
    .restart local v7    # "retVal":Landroid/content/Intent;
    .restart local v8    # "serviceInfo":Landroid/content/pm/ResolveInfo;
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method private updateSingleHandSettings()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    iget-boolean v1, p0, Lcom/motorola/server/policy/SingleHandController;->ENABLE_GSH_DEBUG:Z

    if-eqz v1, :cond_f

    .line 248
    const-string/jumbo v1, "SingleHandController"

    const-string/jumbo v2, "update in SingleHand Settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_f
    iget-boolean v1, p0, Lcom/motorola/server/policy/SingleHandController;->isSinglehandSupport:Z

    if-eqz v1, :cond_2b

    .line 252
    iget-object v1, p0, Lcom/motorola/server/policy/SingleHandController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 253
    const-string/jumbo v2, "global_single_hand_on"

    .line 252
    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, "gshModeOn":I
    sget-boolean v1, Lcom/motorola/server/policy/SingleHandController;->mGshModeEntered:Z

    if-eqz v1, :cond_2c

    .line 255
    invoke-direct {p0}, Lcom/motorola/server/policy/SingleHandController;->exitGsh()V

    .line 256
    if-nez v0, :cond_2b

    .line 257
    sput-boolean v3, Lcom/motorola/server/policy/SingleHandController;->mGshModeEntered:Z

    .line 246
    .end local v0    # "gshModeOn":I
    :cond_2b
    :goto_2b
    return-void

    .line 259
    .restart local v0    # "gshModeOn":I
    :cond_2c
    if-ne v0, v4, :cond_2b

    .line 260
    sput-boolean v4, Lcom/motorola/server/policy/SingleHandController;->mGshModeEntered:Z

    goto :goto_2b
.end method


# virtual methods
.method public adaptWallpaperLayout(Landroid/graphics/Rect;II)V
    .registers 5
    .param p1, "dcf"    # Landroid/graphics/Rect;
    .param p2, "dcfRight"    # I
    .param p3, "dcfBottom"    # I

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/motorola/server/policy/SingleHandController;->isSinglehandSupport:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/motorola/server/policy/SingleHandController;->isSystemInSingleHandMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 219
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 220
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 217
    :cond_e
    return-void
.end method

.method public hasIgnoreGlobalTransformFlag(I)Z
    .registers 4
    .param p1, "privateFlags"    # I

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-boolean v1, p0, Lcom/motorola/server/policy/SingleHandController;->isSinglehandSupport:Z

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/motorola/server/policy/SingleHandController;->isSystemInSingleHandMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 139
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    .line 138
    :cond_11
    return v0
.end method

.method public isSystemInSingleHandMode()Z
    .registers 2

    .prologue
    .line 204
    sget-boolean v0, Lcom/motorola/server/policy/SingleHandController;->mGshModeEntered:Z

    return v0
.end method

.method public setupSingleHand()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-boolean v0, p0, Lcom/motorola/server/policy/SingleHandController;->isSinglehandSupport:Z

    if-eqz v0, :cond_3f

    .line 107
    iget-object v0, p0, Lcom/motorola/server/policy/SingleHandController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040605

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/server/policy/SingleHandController;->mSingleHandServiceAction:Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/motorola/server/policy/SingleHandController$SingleHandSettingObserver;

    iget-object v1, p0, Lcom/motorola/server/policy/SingleHandController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/motorola/server/policy/SingleHandController$SingleHandSettingObserver;-><init>(Lcom/motorola/server/policy/SingleHandController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/server/policy/SingleHandController;->mSingleHandSettingObserver:Lcom/motorola/server/policy/SingleHandController$SingleHandSettingObserver;

    .line 110
    iget-object v0, p0, Lcom/motorola/server/policy/SingleHandController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "global_single_hand_on"

    .line 110
    invoke-static {v0, v1, v4}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    iget-object v0, p0, Lcom/motorola/server/policy/SingleHandController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "global_single_hand_on"

    .line 112
    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/motorola/server/policy/SingleHandController;->mSingleHandSettingObserver:Lcom/motorola/server/policy/SingleHandController$SingleHandSettingObserver;

    .line 114
    const/4 v3, -0x1

    .line 112
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 116
    invoke-direct {p0}, Lcom/motorola/server/policy/SingleHandController;->updateSingleHandSettings()V

    .line 105
    :cond_3f
    return-void
.end method

.method public setupSingleHand(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 4
    .param p1, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/motorola/server/policy/SingleHandController;->setupSingleHand()V

    .line 127
    iget-boolean v0, p0, Lcom/motorola/server/policy/SingleHandController;->isSinglehandSupport:Z

    if-eqz v0, :cond_10

    .line 128
    invoke-static {}, Lcom/motorola/internal/widget/GlobalTouchManager;->getInstance()Lcom/motorola/internal/widget/GlobalTouchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/server/policy/SingleHandController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/internal/widget/GlobalTouchManager;->init(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/content/Context;)V

    .line 125
    :cond_10
    return-void
.end method

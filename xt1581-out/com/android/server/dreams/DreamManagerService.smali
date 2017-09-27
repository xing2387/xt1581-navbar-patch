.class public final Lcom/android/server/dreams/DreamManagerService;
.super Lcom/android/server/SystemService;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamManagerService$1;,
        Lcom/android/server/dreams/DreamManagerService$2;,
        Lcom/android/server/dreams/DreamManagerService$BinderService;,
        Lcom/android/server/dreams/DreamManagerService$DreamHandler;,
        Lcom/android/server/dreams/DreamManagerService$LocalService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DreamManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/dreams/DreamController;

.field private final mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

.field private mCurrentDreamCanDoze:Z

.field private mCurrentDreamDozeScreenBrightness:I

.field private mCurrentDreamDozeScreenState:I

.field private mCurrentDreamIsDozing:Z

.field private mCurrentDreamIsTest:Z

.field private mCurrentDreamIsWaking:Z

.field private mCurrentDreamName:Landroid/content/ComponentName;

.field private mCurrentDreamToken:Landroid/os/Binder;

.field private mCurrentDreamUserId:I

.field private final mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mSystemPropertiesChanged:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2
    .param p1, "doze"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2
    .param p1, "immediate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2
    .param p1, "immediate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    .registers 3
    .param p1, "dream"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->testDreamInternal(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .registers 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->enableKeyboardWhileDozingInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->finishSelfInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestAwakenInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 487
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 706
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    .line 101
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    .line 103
    new-instance v0, Lcom/android/server/dreams/DreamController;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 105
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 106
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 107
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DreamManagerService"

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 110
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 111
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 99
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    .line 457
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 458
    const-string/jumbo v2, ", must have permission "

    .line 457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_31
    return-void
.end method

.method private chooseDreamForUser(ZI)Landroid/content/ComponentName;
    .registers 8
    .param p1, "doze"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 287
    if-eqz p1, :cond_11

    .line 288
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 289
    .local v0, "dozeComponent":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_f

    .end local v0    # "dozeComponent":Landroid/content/ComponentName;
    :goto_e
    return-object v0

    .restart local v0    # "dozeComponent":Landroid/content/ComponentName;
    :cond_f
    move-object v0, v2

    goto :goto_e

    .line 291
    .end local v0    # "dozeComponent":Landroid/content/ComponentName;
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    .line 292
    .local v1, "dreams":[Landroid/content/ComponentName;
    if-eqz v1, :cond_1c

    array-length v3, v1

    if-eqz v3, :cond_1c

    aget-object v2, v1, v4

    :cond_1c
    return-object v2
.end method

.method private cleanupDreamLocked()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 440
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    .line 441
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 442
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    .line 443
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 444
    iput v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    .line 445
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    .line 446
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz v0, :cond_19

    .line 447
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 448
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 450
    :cond_19
    iput v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 439
    return-void
.end method

.method private static componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;
    .registers 5
    .param p0, "names"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 476
    if-nez p0, :cond_4

    .line 477
    return-object v3

    .line 479
    :cond_4
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "namesArray":[Ljava/lang/String;
    array-length v3, v2

    new-array v0, v3, [Landroid/content/ComponentName;

    .line 481
    .local v0, "componentNames":[Landroid/content/ComponentName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 482
    aget-object v3, v2, v1

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v0, v1

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 484
    :cond_1d
    return-object v0
.end method

.method private static componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .param p0, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .local v1, "names":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_22

    .line 465
    array-length v3, p0

    :goto_9
    if-ge v2, v3, :cond_22

    aget-object v0, p0, v2

    .line 466
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_18

    .line 467
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    :cond_18
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 472
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 139
    const-string/jumbo v0, "DREAM MANAGER (dumpsys dreams)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsWaking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamDozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamDozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getDozeComponent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 154
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    .line 159
    const-string/jumbo v3, ""

    const-wide/16 v4, 0xc8

    move-object v2, p1

    .line 154
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 138
    return-void
.end method

.method private enableKeyboardWhileDozingInternal(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_3
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v0, p1, :cond_20

    .line 272
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result v0

    .line 271
    if-eqz v0, :cond_20

    .line 273
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 271
    if-eqz v0, :cond_20

    .line 274
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p2}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p2}, Landroid/os/PowerManagerInternal;->setInteractiveWhileDozing(Z)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v1

    .line 267
    return-void

    .line 270
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private finishSelfInternal(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_3
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v0, p1, :cond_a

    .line 202
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit v1

    .line 188
    return-void

    .line 200
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 347
    const-string/jumbo v3, "screensaver_default_component"

    .line 346
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_11

    :goto_10
    return-object v1

    :cond_11
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_10
.end method

.method private getDozeComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 353
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getDozeComponent(I)Landroid/content/ComponentName;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 360
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_3f

    const-string/jumbo v3, "debug.doze.component"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    :goto_c
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 363
    const-string/jumbo v4, "doze_enabled"

    .line 362
    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 364
    .local v0, "dozeEnabled":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 367
    const/4 v3, 0x1

    if-ne v0, v3, :cond_41

    .line 368
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 369
    const v4, 0x104005b

    .line 368
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    :cond_2f
    :goto_2f
    if-eqz v0, :cond_52

    const/4 v1, 0x1

    .line 378
    .local v1, "enabled":Z
    :goto_32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_54

    if-eqz v1, :cond_54

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :goto_3e
    return-object v3

    .line 360
    .end local v0    # "dozeEnabled":I
    .end local v1    # "enabled":Z
    :cond_3f
    const/4 v2, 0x0

    .local v2, "name":Ljava/lang/String;
    goto :goto_c

    .line 370
    .end local v2    # "name":Ljava/lang/String;
    .restart local v0    # "dozeEnabled":I
    :cond_41
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    .line 371
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 372
    const v4, 0x1040600

    .line 371
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    goto :goto_2f

    .line 376
    .end local v2    # "name":Ljava/lang/String;
    :cond_52
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_32

    .line 378
    :cond_54
    const/4 v3, 0x0

    goto :goto_3e
.end method

.method private getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 312
    iget-object v5, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 313
    const-string/jumbo v6, "screensaver_components"

    .line 312
    invoke-static {v5, v6, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "names":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v1

    .line 318
    .local v1, "components":[Landroid/content/ComponentName;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v4, "validComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_2a

    .line 320
    const/4 v5, 0x0

    array-length v6, v1

    :goto_1a
    if-ge v5, v6, :cond_2a

    aget-object v0, v1, v5

    .line 321
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 322
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 328
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_2a
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 330
    .local v2, "defaultDream":Landroid/content/ComponentName;
    if-eqz v2, :cond_53

    .line 331
    const-string/jumbo v5, "DreamManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Falling back to default dream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v2    # "defaultDream":Landroid/content/ComponentName;
    :cond_53
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ComponentName;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ComponentName;

    return-object v5
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 383
    if-eqz p1, :cond_f

    :try_start_3
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 384
    const/high16 v3, 0x10000000

    .line 383
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_e} :catch_10

    move-result-object v1

    :cond_f
    return-object v1

    .line 385
    :catch_10
    move-exception v0

    .line 386
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
.end method

.method private isDreamingInternal()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_4
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_14

    if-eqz v2, :cond_e

    :cond_c
    :goto_c
    monitor-exit v1

    return v0

    .line 165
    :cond_e
    :try_start_e
    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_14

    if-nez v2, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    .line 163
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestAwakenInternal()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 184
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 185
    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    .line 179
    return-void
.end method

.method private requestDreamInternal()V
    .registers 5

    .prologue
    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 175
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 176
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->nap(J)V

    .line 169
    return-void
.end method

.method private setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 340
    const-string/jumbo v1, "screensaver_components"

    .line 341
    invoke-static {p2}, Lcom/android/server/dreams/DreamManagerService;->componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 338
    return-void
.end method

.method private startDozingInternal(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_3
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v0, p1, :cond_20

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-eqz v0, :cond_20

    .line 239
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 240
    iput p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 241
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    .line 243
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-nez v0, :cond_20

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 245
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v1

    .line 230
    return-void

    .line 237
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startDreamInternal(Z)V
    .registers 6
    .param p1, "doze"    # Z

    .prologue
    .line 214
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 215
    .local v1, "userId":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(ZI)Landroid/content/ComponentName;

    move-result-object v0

    .line 216
    .local v0, "dream":Landroid/content/ComponentName;
    if-eqz v0, :cond_12

    .line 217
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 218
    const/4 v3, 0x0

    :try_start_e
    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    monitor-exit v2

    .line 213
    :cond_12
    return-void

    .line 217
    :catchall_13
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private startDreamLocked(Landroid/content/ComponentName;ZZI)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isTest"    # Z
    .param p3, "canDoze"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 393
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    if-ne v0, p2, :cond_15

    .line 394
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-ne v0, p3, :cond_15

    .line 395
    iget v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    if-ne v0, p4, :cond_15

    .line 396
    return-void

    .line 399
    :cond_15
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    .line 401
    const-string/jumbo v0, "DreamManagerService"

    const-string/jumbo v1, "Entering dreamland."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 404
    .local v2, "newToken":Landroid/os/Binder;
    iput-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    .line 405
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 406
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    .line 407
    iput-boolean p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 408
    iput p4, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    .line 410
    iget-object v7, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$5;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZI)V

    invoke-virtual {v7, v0}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method private stopDozingInternal(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_3
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v0, p1, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz v0, :cond_1a

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 259
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 260
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 261
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 260
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit v1

    .line 251
    return-void

    .line 256
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private stopDreamInternal(Z)V
    .registers 4
    .param p1, "immediate"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 223
    return-void

    .line 224
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private stopDreamLocked(Z)V
    .registers 4
    .param p1, "immediate"    # Z

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v0, :cond_1c

    .line 420
    if-eqz p1, :cond_1d

    .line 421
    const-string/jumbo v0, "DreamManagerService"

    const-string/jumbo v1, "Leaving dreamland."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    .line 430
    :goto_12
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamManagerService$6;-><init>(Lcom/android/server/dreams/DreamManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    .line 418
    :cond_1c
    return-void

    .line 423
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    if-eqz v0, :cond_22

    .line 424
    return-void

    .line 426
    :cond_22
    const-string/jumbo v0, "DreamManagerService"

    const-string/jumbo v1, "Gently waking up from dream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    goto :goto_12
.end method

.method private testDreamInternal(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "dream"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    monitor-exit v0

    .line 207
    return-void

    .line 208
    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private validateDream(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 296
    if-nez p1, :cond_4

    return v4

    .line 297
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 298
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v0, :cond_2c

    .line 299
    const-string/jumbo v1, "DreamManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v4

    .line 301
    :cond_2c
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3f

    .line 302
    const-string/jumbo v1, "android.permission.BIND_DREAM_SERVICE"

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 308
    :cond_3f
    const/4 v1, 0x1

    return v1

    .line 303
    :cond_41
    const-string/jumbo v1, "DreamManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    const-string/jumbo v3, " is not available because its manifest is missing the "

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    const-string/jumbo v3, "android.permission.BIND_DREAM_SERVICE"

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    const-string/jumbo v3, " permission on the dream service declaration."

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return v4
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .prologue
    .line 123
    const/16 v0, 0x258

    if-ne p1, v0, :cond_22

    .line 124
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 125
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 127
    :cond_d
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$3;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    .line 134
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    const/4 v4, 0x0

    .line 127
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    :cond_22
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string/jumbo v0, "dreams"

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 118
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 116
    return-void
.end method

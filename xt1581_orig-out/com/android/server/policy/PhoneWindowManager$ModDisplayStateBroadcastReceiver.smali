.class Lcom/android/server/policy/PhoneWindowManager$ModDisplayStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModDisplayStateBroadcastReceiver"
.end annotation


# static fields
.field private static final ACTION_DISPLAY_OFF_INTERNAL:Ljava/lang/String; = "com.motorola.mod.action.display.OFF_INTERNAL"

.field private static final ACTION_DISPLAY_ON_INTERNAL:Ljava/lang/String; = "com.motorola.mod.action.display.ON_INTERNAL"

.field private static final EXTRA_FPS_NAV_EC_BIT:Ljava/lang/String; = "fpsNavEcBit"

.field private static final PERMISSION_MOD_INTERNAL:Ljava/lang/String; = "com.motorola.mod.permission.MOD_INTERNAL"


# instance fields
.field public mDisplayStateOn:Z

.field public mFPSNavECbit:Z

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    const/4 v0, 0x0

    .line 8299
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ModDisplayStateBroadcastReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8308
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$ModDisplayStateBroadcastReceiver;->mDisplayStateOn:Z

    .line 8309
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$ModDisplayStateBroadcastReceiver;->mFPSNavECbit:Z

    .line 8299
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$ModDisplayStateBroadcastReceiver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$ModDisplayStateBroadcastReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8312
    const-string/jumbo v2, "com.motorola.mod.action.display.ON_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 8313
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$ModDisplayStateBroadcastReceiver;->mDisplayStateOn:Z

    .line 8314
    const-string/jumbo v2, "fpsNavEcBit"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1d

    :goto_1a
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$ModDisplayStateBroadcastReceiver;->mFPSNavECbit:Z

    .line 8311
    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v0, v1

    .line 8314
    goto :goto_1a

    .line 8315
    :cond_1f
    const-string/jumbo v0, "com.motorola.mod.action.display.OFF_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8316
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$ModDisplayStateBroadcastReceiver;->mDisplayStateOn:Z

    goto :goto_1c
.end method

.method public register(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8320
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8321
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.motorola.mod.action.display.ON_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8322
    const-string/jumbo v1, "com.motorola.mod.action.display.OFF_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8323
    const-string/jumbo v1, "com.motorola.mod.permission.MOD_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 8319
    return-void
.end method

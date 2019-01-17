.class Lcom/android/server/policy/PhoneWindowManager$LockNowBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockNowBroadcastReceiver"
.end annotation


# static fields
.field public static final ACTION_LOCK_NOW:Ljava/lang/String; = "com.motorola.server.window.ACTION_LOCK_NOW"

.field public static final PERMISSION_LOCK_NOW:Ljava/lang/String; = "com.motorola.permission.LOCK_NOW"


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 8279
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$LockNowBroadcastReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$LockNowBroadcastReceiver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$LockNowBroadcastReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8285
    const-string/jumbo v0, "com.motorola.server.window.ACTION_LOCK_NOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 8286
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$LockNowBroadcastReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 8284
    :cond_13
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8291
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8292
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.motorola.server.window.ACTION_LOCK_NOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8293
    const-string/jumbo v1, "com.motorola.permission.LOCK_NOW"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 8290
    return-void
.end method

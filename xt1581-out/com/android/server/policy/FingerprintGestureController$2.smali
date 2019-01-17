.class Lcom/android/server/policy/FingerprintGestureController$2;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/FingerprintGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FingerprintGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FingerprintGestureController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/FingerprintGestureController;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/server/policy/FingerprintGestureController$2;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 234
    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController$2;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    iget-object v3, p0, Lcom/android/server/policy/FingerprintGestureController$2;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-static {v3}, Lcom/android/server/policy/FingerprintGestureController;->-get0(Lcom/android/server/policy/FingerprintGestureController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_28

    :goto_24
    invoke-static {v2, v1}, Lcom/android/server/policy/FingerprintGestureController;->-set1(Lcom/android/server/policy/FingerprintGestureController;Z)Z

    .line 231
    :goto_27
    return-void

    .line 234
    :cond_28
    const/4 v1, 0x0

    goto :goto_24

    .line 237
    :cond_2a
    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController$2;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-static {v1}, Lcom/android/server/policy/FingerprintGestureController;->-wrap2(Lcom/android/server/policy/FingerprintGestureController;)V

    goto :goto_27
.end method

.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;
.super Landroid/content/BroadcastReceiver;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 250
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get5(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->post(Ljava/lang/Runnable;)Z

    .line 248
    :cond_18
    return-void
.end method

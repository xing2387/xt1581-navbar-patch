.class Lcom/android/server/twilight/TwilightService$3;
.super Landroid/content/BroadcastReceiver;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 580
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 581
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/twilight/TwilightService;->-set0(Lcom/android/server/twilight/TwilightService;I)I

    .line 582
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-wrap1(Lcom/android/server/twilight/TwilightService;)V

    .line 583
    return-void

    .line 585
    :cond_1d
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 586
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 592
    :cond_33
    const-string/jumbo v1, "com.android.server.action.RESET_TWILIGHT_AUTO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 593
    const-string/jumbo v1, "user"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 594
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 595
    const-string/jumbo v2, "twilight_mode"

    const/4 v3, 0x2

    .line 594
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 596
    return-void

    .line 588
    .end local v0    # "user":I
    :cond_59
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->requestLocationUpdate()V

    .line 589
    return-void

    .line 599
    :cond_61
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->requestTwilightUpdate()V

    .line 579
    return-void
.end method

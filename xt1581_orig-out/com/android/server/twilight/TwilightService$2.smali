.class Lcom/android/server/twilight/TwilightService$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/twilight/TwilightService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 10
    .param p1, "selfChange"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 557
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 558
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 559
    const-string/jumbo v2, "twilight_mode"

    iget-object v3, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v3}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)I

    move-result v3

    .line 558
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 560
    .local v0, "value":I
    if-nez v0, :cond_2c

    .line 561
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    new-instance v2, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v2, v4, v6}, Lcom/android/server/twilight/TwilightState;-><init>(ZF)V

    invoke-static {v1, v2}, Lcom/android/server/twilight/TwilightService;->-wrap3(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    .line 556
    :goto_2b
    return-void

    .line 562
    :cond_2c
    if-ne v0, v5, :cond_39

    .line 563
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    new-instance v2, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v2, v5, v7}, Lcom/android/server/twilight/TwilightState;-><init>(ZF)V

    invoke-static {v1, v2}, Lcom/android/server/twilight/TwilightService;->-wrap3(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    goto :goto_2b

    .line 564
    :cond_39
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4c

    .line 565
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    new-instance v2, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v2, v4, v6}, Lcom/android/server/twilight/TwilightState;-><init>(ZF)V

    invoke-static {v1, v2}, Lcom/android/server/twilight/TwilightService;->-wrap3(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    .line 566
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-wrap2(Lcom/android/server/twilight/TwilightService;)V

    goto :goto_2b

    .line 567
    :cond_4c
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5f

    .line 568
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    new-instance v2, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v2, v5, v7}, Lcom/android/server/twilight/TwilightState;-><init>(ZF)V

    invoke-static {v1, v2}, Lcom/android/server/twilight/TwilightService;->-wrap3(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    .line 569
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-wrap2(Lcom/android/server/twilight/TwilightService;)V

    goto :goto_2b

    .line 571
    :cond_5f
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1, v4}, Lcom/android/server/twilight/TwilightService;->-set1(Lcom/android/server/twilight/TwilightService;Z)Z

    .line 572
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->requestTwilightUpdate()V

    goto :goto_2b
.end method

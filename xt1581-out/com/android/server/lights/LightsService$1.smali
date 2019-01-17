.class Lcom/android/server/lights/LightsService$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v2, v3

    .line 195
    .local v0, "l":Lcom/android/server/lights/LightsService$LightImpl;
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-wrap0(Lcom/android/server/lights/LightsService;)I

    move-result v1

    .line 198
    .local v1, "vrDisplayMode":I
    if-eqz p1, :cond_23

    if-nez v1, :cond_23

    .line 199
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-get2(Lcom/android/server/lights/LightsService;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 202
    invoke-virtual {v0}, Lcom/android/server/lights/LightsService$LightImpl;->enableLowPersistence()V

    .line 203
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->-set0(Lcom/android/server/lights/LightsService;Z)Z

    .line 193
    :cond_22
    :goto_22
    return-void

    .line 206
    :cond_23
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-get2(Lcom/android/server/lights/LightsService;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 208
    invoke-virtual {v0}, Lcom/android/server/lights/LightsService$LightImpl;->disableLowPersistence()V

    .line 209
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->-set0(Lcom/android/server/lights/LightsService;Z)Z

    goto :goto_22
.end method

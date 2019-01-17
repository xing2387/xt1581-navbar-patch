.class Lcom/android/server/power/PowerManagerService$5;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->setModScreenOff(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$screenOff:Z


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "val$screenOff"    # Z

    .prologue
    .line 2191
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService$5;->val$screenOff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2193
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$5;->val$screenOff:Z

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    .line 2195
    .local v1, "mode":I
    :goto_5
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 2196
    .local v0, "displayToken":Landroid/os/IBinder;
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 2192
    return-void

    .line 2194
    .end local v0    # "displayToken":Landroid/os/IBinder;
    .end local v1    # "mode":I
    :cond_e
    const/4 v1, 0x2

    .restart local v1    # "mode":I
    goto :goto_5
.end method

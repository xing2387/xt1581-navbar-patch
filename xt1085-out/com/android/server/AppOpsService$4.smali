.class Lcom/android/server/AppOpsService$4;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 358
    return v2

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 362
    return v2

    .line 364
    :cond_13
    iget-object v0, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    .line 366
    const/4 v0, 0x2

    return v0

    .line 368
    :cond_1f
    const/4 v0, 0x3

    return v0
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppOpsService$4;->getMountMode(ILjava/lang/String;)I

    move-result v0

    .line 374
    .local v0, "mountMode":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    .line 375
    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    .line 374
    :cond_b
    :goto_b
    return v1

    .line 375
    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.class Lcom/android/server/am/ActivityManagerService$MemBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 2589
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2590
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2589
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2595
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_45

    .line 2597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump meminfo from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2598
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2598
    const-string/jumbo v1, ", uid="

    .line 2597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2599
    const-string/jumbo v1, " without permission "

    .line 2597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2599
    const-string/jumbo v1, "android.permission.DUMP"

    .line 2597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    return-void

    .line 2603
    :cond_45
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "  "

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->dumpApplicationMemoryUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 2594
    return-void
.end method

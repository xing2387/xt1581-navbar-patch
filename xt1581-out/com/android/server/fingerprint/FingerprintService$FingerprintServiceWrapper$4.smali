.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Ljava/lang/String;IILandroid/os/IBinder;)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "val$opPackageName"    # Ljava/lang/String;
    .param p3, "val$uid"    # I
    .param p4, "val$pid"    # I
    .param p5, "val$token"    # Landroid/os/IBinder;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$opPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$uid:I

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$pid:I

    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 931
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$opPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$uid:I

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$pid:I

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZII)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 932
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelAuthentication(): reject "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$opPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_2d
    :goto_2d
    return-void

    .line 934
    :cond_2e
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v0

    .line 935
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    instance-of v2, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v2, :cond_94

    .line 936
    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$token:Landroid/os/IBinder;

    if-ne v2, v3, :cond_6e

    .line 937
    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$token:Landroid/os/IBinder;

    if-ne v2, v3, :cond_6c

    :goto_68
    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    goto :goto_2d

    :cond_6c
    const/4 v1, 0x0

    goto :goto_68

    .line 940
    :cond_6e
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t stop client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 941
    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    .line 940
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 941
    const-string/jumbo v3, " since tokens don\'t match"

    .line 940
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 943
    :cond_94
    if-eqz v0, :cond_2d

    .line 944
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t cancel non-authenticating client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 945
    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    .line 944
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d
.end method

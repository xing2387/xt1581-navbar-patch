.class Lcom/android/server/trust/TrustManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 945
    const/4 v0, 0x1

    return v0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap8(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 938
    return-void
.end method

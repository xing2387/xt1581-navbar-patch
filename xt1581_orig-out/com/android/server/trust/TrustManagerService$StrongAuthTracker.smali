.class Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 1010
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 1007
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    .line 1009
    return-void
.end method


# virtual methods
.method allowTrustFromUnlock(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1044
    if-gez p1, :cond_1c

    .line 1045
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId must be a valid user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1047
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v0

    .line 1048
    .local v0, "previous":Z
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1056
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v1

    if-eq v1, v0, :cond_31

    .line 1057
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1043
    :cond_31
    return-void
.end method

.method canAgentsRunForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1032
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    .line 1031
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public onStrongAuthRequiredChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 1014
    return-void
.end method

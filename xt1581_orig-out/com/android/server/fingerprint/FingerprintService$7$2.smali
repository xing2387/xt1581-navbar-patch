.class Lcom/android/server/fingerprint/FingerprintService$7$2;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$7;->onAcquired(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$7;

.field final synthetic val$acquiredInfo:I

.field final synthetic val$deviceId:J


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$7;JI)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$7;
    .param p2, "val$deviceId"    # J
    .param p4, "val$acquiredInfo"    # I

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$7$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$7;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$7$2;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$7$2;->val$acquiredInfo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$7;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$7$2;->val$deviceId:J

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$7$2;->val$acquiredInfo:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->handleAcquired(JI)V

    .line 791
    return-void
.end method

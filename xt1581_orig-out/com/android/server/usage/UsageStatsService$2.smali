.class Lcom/android/server/usage/UsageStatsService$2;
.super Ljava/lang/Thread;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;

.field final synthetic val$actualSystemTime:J

.field final synthetic val$expectedSystemTime:J

.field final synthetic val$service:Lcom/android/server/usage/UserUsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UserUsageStatsService;JJ)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "val$service"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p3, "val$expectedSystemTime"    # J
    .param p5, "val$actualSystemTime"    # J

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService$2;->val$service:Lcom/android/server/usage/UserUsageStatsService;

    iput-wide p3, p0, Lcom/android/server/usage/UsageStatsService$2;->val$expectedSystemTime:J

    iput-wide p5, p0, Lcom/android/server/usage/UsageStatsService$2;->val$actualSystemTime:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$2;->val$service:Lcom/android/server/usage/UserUsageStatsService;

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService$2;->val$expectedSystemTime:J

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService$2;->val$actualSystemTime:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 591
    return-void
.end method

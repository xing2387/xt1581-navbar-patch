.class Lcom/android/server/location/ComprehensiveCountryDetector$3;
.super Ljava/util/TimerTask;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;->scheduleLocationRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/ComprehensiveCountryDetector;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$3;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$3;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    .line 422
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$3;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/location/ComprehensiveCountryDetector;->-wrap0(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    .line 417
    return-void
.end method

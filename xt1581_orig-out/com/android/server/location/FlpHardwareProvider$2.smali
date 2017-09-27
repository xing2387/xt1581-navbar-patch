.class Lcom/android/server/location/FlpHardwareProvider$2;
.super Landroid/location/IFusedGeofenceHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Landroid/location/IFusedGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .registers 6
    .param p1, "geofenceRequestsArray"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .prologue
    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.motorola.location.instrumentation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "instrumentationIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.motorola.location.insttype"

    const-string/jumbo v2, "flpHwGeofenceCount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string/jumbo v1, "com.motorola.location.instincvalue"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 471
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get1(Lcom/android/server/location/FlpHardwareProvider;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.motorola.android.permission.LOC_INST_RECEIVE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap6(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    .line 466
    return-void
.end method

.method public isSupported()Z
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap2(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public modifyGeofenceOptions(IIIIII)V
    .registers 14
    .param p1, "geofenceId"    # I
    .param p2, "lastTransition"    # I
    .param p3, "monitorTransitions"    # I
    .param p4, "notificationResponsiveness"    # I
    .param p5, "unknownTimer"    # I
    .param p6, "sourcesToUse"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/location/FlpHardwareProvider;->-wrap11(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V

    .line 497
    return-void
.end method

.method public pauseMonitoringGeofence(I)V
    .registers 3
    .param p1, "geofenceId"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap12(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 482
    return-void
.end method

.method public removeGeofences([I)V
    .registers 3
    .param p1, "geofenceIds"    # [I

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap13(Lcom/android/server/location/FlpHardwareProvider;[I)V

    .line 477
    return-void
.end method

.method public resumeMonitoringGeofence(II)V
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap15(Lcom/android/server/location/FlpHardwareProvider;II)V

    .line 487
    return-void
.end method

.class Lcom/android/server/location/GnssLocationProvider$7;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$7;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .registers 16
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I

    .prologue
    .line 1602
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.motorola.location.instrumentation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1603
    .local v0, "instrumentationIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.motorola.location.insttype"

    const-string/jumbo v2, "hardwareGeofenceCount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    const-string/jumbo v1, "com.motorola.location.instincvalue"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1605
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$7;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.motorola.android.permission.LOC_INST_RECEIVE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1608
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/GnssLocationProvider;->-wrap0(IDDDIIII)Z

    move-result v1

    return v1
.end method

.method public isHardwareGeofenceSupported()Z
    .registers 2

    .prologue
    .line 1595
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap2()Z

    move-result v0

    return v0
.end method

.method public pauseHardwareGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"    # I

    .prologue
    .line 1617
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap5(I)Z

    move-result v0

    return v0
.end method

.method public removeHardwareGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"    # I

    .prologue
    .line 1613
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap6(I)Z

    move-result v0

    return v0
.end method

.method public resumeHardwareGeofence(II)Z
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransition"    # I

    .prologue
    .line 1621
    invoke-static {p1, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap7(II)Z

    move-result v0

    return v0
.end method

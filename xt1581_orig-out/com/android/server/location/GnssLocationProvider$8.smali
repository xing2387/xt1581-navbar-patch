.class Lcom/android/server/location/GnssLocationProvider$8;
.super Landroid/location/INetInitiatedListener$Stub;
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
    .line 2373
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .registers 6
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .prologue
    .line 2380
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendNiResponse, notifId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2381
    const-string/jumbo v2, ", response: "

    .line 2380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_2b
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap30(Lcom/android/server/location/GnssLocationProvider;II)V

    .line 2383
    const/4 v0, 0x1

    return v0
.end method

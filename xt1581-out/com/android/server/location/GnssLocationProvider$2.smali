.class Lcom/android/server/location/GnssLocationProvider$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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
    .line 521
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap34(Lcom/android/server/location/GnssLocationProvider;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap41(Lcom/android/server/location/GnssLocationProvider;)V

    .line 523
    return-void
.end method

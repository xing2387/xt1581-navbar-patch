.class public final Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptivePortalProbeResult"
.end annotation


# static fields
.field static final FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;


# instance fields
.field final mHttpResponseCode:I

.field final mRedirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 449
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    const/16 v1, 0x257

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    .line 448
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "httpResponseCode"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    .line 456
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mRedirectUrl:Ljava/lang/String;

    .line 454
    return-void
.end method


# virtual methods
.method isPortal()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_14

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_14

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v2, 0x18f

    if-gt v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method isSuccessful()Z
    .registers 3

    .prologue
    .line 459
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

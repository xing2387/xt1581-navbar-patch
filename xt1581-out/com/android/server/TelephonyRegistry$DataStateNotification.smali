.class Lcom/android/server/TelephonyRegistry$DataStateNotification;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataStateNotification"
.end annotation


# instance fields
.field public apn:Ljava/lang/String;

.field public isDataConnectivityPossible:Z

.field public linkCapabilities:Landroid/net/NetworkCapabilities;

.field public linkProperties:Landroid/net/LinkProperties;

.field public networkType:I

.field public reason:Ljava/lang/String;

.field public roaming:Z

.field public state:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 9
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "linkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p7, "networkType"    # I
    .param p8, "roaming"    # Z

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-direct/range {p0 .. p8}, Lcom/android/server/TelephonyRegistry$DataStateNotification;->setValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 140
    return-void
.end method

.method private setValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 9
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "linkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p7, "networkType"    # I
    .param p8, "roaming"    # Z

    .prologue
    .line 165
    iput p1, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->state:I

    .line 166
    iput-boolean p2, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->isDataConnectivityPossible:Z

    .line 167
    iput-object p3, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->reason:Ljava/lang/String;

    .line 168
    iput-object p4, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->apn:Ljava/lang/String;

    .line 169
    iput-object p5, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->linkProperties:Landroid/net/LinkProperties;

    .line 170
    iput-object p6, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->linkCapabilities:Landroid/net/NetworkCapabilities;

    .line 171
    iput p7, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->networkType:I

    .line 172
    iput-boolean p8, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->roaming:Z

    .line 164
    return-void
.end method


# virtual methods
.method public checkAndUpdateValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)Z
    .registers 11
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "linkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p7, "networkType"    # I
    .param p8, "roaming"    # Z

    .prologue
    const/4 v1, 0x0

    .line 150
    if-nez p1, :cond_c

    .line 151
    iget-boolean v0, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->isDataConnectivityPossible:Z

    .line 150
    if-ne p2, v0, :cond_c

    .line 151
    iget v0, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->state:I

    if-ne p1, v0, :cond_c

    .line 153
    return v1

    .line 156
    :cond_c
    invoke-direct/range {p0 .. p8}, Lcom/android/server/TelephonyRegistry$DataStateNotification;->setValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

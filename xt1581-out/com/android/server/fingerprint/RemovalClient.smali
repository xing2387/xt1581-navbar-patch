.class public abstract Lcom/android/server/fingerprint/RemovalClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "RemovalClient.java"


# instance fields
.field private mFingerId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "fingerId"    # I
    .param p7, "groupId"    # I
    .param p8, "userId"    # I
    .param p9, "restricted"    # Z
    .param p10, "owner"    # Ljava/lang/String;

    .prologue
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 37
    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 38
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    .line 36
    return-void
.end method

.method private sendRemoved(II)Z
    .registers 9
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v1

    .line 74
    .local v1, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-eqz v1, :cond_e

    .line 75
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getHalDeviceId()J

    move-result-wide v4

    invoke-interface {v1, v4, v5, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_12

    .line 80
    :cond_e
    :goto_e
    if-nez p1, :cond_11

    const/4 v2, 0x1

    :cond_11
    return v2

    .line 77
    :catch_12
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "Failed to notify Removed:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .registers 5
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 100
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "rem"    # I

    .prologue
    .line 94
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(II)Z
    .registers 5
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 106
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onRemoved(II)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 85
    if-eqz p1, :cond_11

    .line 86
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getTargetUserId()I

    move-result v2

    .line 86
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 89
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/RemovalClient;->sendRemoved(II)Z

    move-result v0

    return v0
.end method

.method public start()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 46
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_start_5
    iget v3, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v2

    .line 47
    .local v2, "result":I
    if-eqz v2, :cond_47

    .line 48
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRemove with id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/RemovalClient;->onError(I)Z
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3c} :catch_3d

    .line 50
    return v2

    .line 52
    .end local v2    # "result":I
    :catch_3d
    move-exception v1

    .line 53
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "startRemove failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_47
    return v6
.end method

.method public stop(Z)I
    .registers 3
    .param p1, "initiatedByClient"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_6

    .line 63
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/RemovalClient;->onError(I)Z

    .line 65
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

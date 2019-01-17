.class public Lcom/google/android/gms/internal/jc;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jc$a;
    }
.end annotation


# instance fields
.field private final Gu:Lcom/google/android/gms/internal/jb;

.field private final Gv:Lcom/google/android/gms/internal/kt;

.field private Gw:Ljava/io/InputStream;

.field private final Gx:I

.field private final Gy:Lcom/google/android/gms/internal/jc$a;

.field private volatile mState:I


# direct methods
.method private a(Landroid/os/RemoteException;)V
    .registers 6

    const/4 v3, 0x2

    const-string/jumbo v0, "CAR.AUDIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RemoteException from car service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/android/gms/internal/jc;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    :cond_24
    :goto_24
    iget v0, p0, Lcom/google/android/gms/internal/jc;->mState:I

    if-ne v0, v3, :cond_35

    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gw:Ljava/io/InputStream;

    if-eqz v0, :cond_24

    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gw:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_24

    :catch_33
    move-exception v0

    goto :goto_24

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gu:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/jc;)V

    iput v3, p0, Lcom/google/android/gms/internal/jc;->mState:I

    goto :goto_28
.end method


# virtual methods
.method declared-synchronized I(Z)V
    .registers 4

    const/4 v1, 0x2

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/google/android/gms/internal/jc;->mState:I

    if-eq v0, v1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->stop()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_29

    if-nez p1, :cond_23

    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gv:Lcom/google/android/gms/internal/kt;

    iget-object v1, p0, Lcom/google/android/gms/internal/jc;->Gy:Lcom/google/android/gms/internal/jc$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kt;->e(Lcom/google/android/gms/internal/ku;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_36
    .catchall {:try_start_b .. :try_end_12} :catchall_29

    :goto_12
    const/4 v0, 0x2

    :try_start_13
    iput v0, p0, Lcom/google/android/gms/internal/jc;->mState:I

    const-string/jumbo v0, "CAR.AUDIO"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_29

    move-result v0

    if-nez v0, :cond_2c

    :goto_1f
    monitor-exit p0

    return-void

    :cond_21
    monitor-exit p0

    return-void

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gu:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/jc;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_29

    goto :goto_b

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2c
    :try_start_2c
    const-string/jumbo v0, "CAR.AUDIO"

    const-string/jumbo v1, "released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_29

    goto :goto_1f

    :catch_36
    move-exception v0

    goto :goto_12
.end method

.method public getStreamType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jc;->Gx:I

    return v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/jc;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/jc;->mState:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_37

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gv:Lcom/google/android/gms/internal/kt;

    iget-object v1, p0, Lcom/google/android/gms/internal/jc;->Gy:Lcom/google/android/gms/internal/jc$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kt;->b(Lcom/google/android/gms/internal/ku;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gw:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_3a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_49
    .catchall {:try_start_9 .. :try_end_15} :catchall_37

    :goto_15
    :try_start_15
    const-string/jumbo v0, "CAR.AUDIO"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_37

    move-result v0

    if-nez v0, :cond_3f

    :goto_1f
    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    const-string/jumbo v0, "CAR.AUDIO"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_37

    move-result v0

    if-nez v0, :cond_2d

    :goto_2b
    monitor-exit p0

    return-void

    :cond_2d
    :try_start_2d
    const-string/jumbo v0, "CAR.AUDIO"

    const-string/jumbo v1, "stop while not started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_37

    goto :goto_2b

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3a
    move-exception v0

    :try_start_3b
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jc;->a(Landroid/os/RemoteException;)V

    goto :goto_15

    :cond_3f
    const-string/jumbo v0, "CAR.AUDIO"

    const-string/jumbo v1, "stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_37

    goto :goto_1f

    :catch_49
    move-exception v0

    goto :goto_15
.end method

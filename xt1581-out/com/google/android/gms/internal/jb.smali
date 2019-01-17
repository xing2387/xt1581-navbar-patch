.class public Lcom/google/android/gms/internal/jb;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private final Gr:[Lcom/google/android/gms/internal/jd;

.field private final Gs:Ljava/lang/Object;

.field private final Gt:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/jc;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zP:Z


# direct methods
.method private ab(I)I
    .registers 5

    packed-switch p1, :pswitch_data_26

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const/4 v0, 0x0

    return v0

    :pswitch_1f
    const/4 v0, 0x1

    return v0

    :pswitch_21
    const/4 v0, 0x2

    return v0

    :pswitch_23
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_21
        :pswitch_3
        :pswitch_1d
        :pswitch_3
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method a(Lcom/google/android/gms/internal/jc;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jc;->getStreamType()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->Gs:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->Gt:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_2e

    return-void

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jc;->getStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method aa(I)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->Gr:[Lcom/google/android/gms/internal/jd;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jb;->ab(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/jb;->Gr:[Lcom/google/android/gms/internal/jd;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    :goto_d
    monitor-exit v1

    return-void

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/jb;->Gr:[Lcom/google/android/gms/internal/jd;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_d

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method fY()V
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v1, "CAR.AUDIO"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2c

    :goto_b
    iput-boolean v0, p0, Lcom/google/android/gms/internal/jb;->zP:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->Gr:[Lcom/google/android/gms/internal/jd;

    monitor-enter v1

    :goto_10
    :try_start_10
    iget-object v2, p0, Lcom/google/android/gms/internal/jb;->Gr:[Lcom/google/android/gms/internal/jd;

    array-length v2, v2

    if-lt v0, v2, :cond_36

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_4c

    iget-object v1, p0, Lcom/google/android/gms/internal/jb;->Gs:Ljava/lang/Object;

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->Gt:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->Gt:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_5a

    return-void

    :cond_2c
    const-string/jumbo v1, "CAR.AUDIO"

    const-string/jumbo v2, "handleCarDisconnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/google/android/gms/internal/jb;->Gr:[Lcom/google/android/gms/internal/jd;

    aget-object v2, v2, v0

    if-nez v2, :cond_3f

    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_3f
    iget-object v2, p0, Lcom/google/android/gms/internal/jb;->Gr:[Lcom/google/android/gms/internal/jd;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/jd;->release()V

    iget-object v2, p0, Lcom/google/android/gms/internal/jb;->Gr:[Lcom/google/android/gms/internal/jd;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_3c

    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_4c

    throw v0

    :cond_4f
    :try_start_4f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jc;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/jc;->I(Z)V

    goto :goto_1f

    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5a

    throw v0
.end method

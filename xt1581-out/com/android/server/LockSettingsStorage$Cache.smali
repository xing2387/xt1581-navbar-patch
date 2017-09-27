.class Lcom/android/server/LockSettingsStorage$Cache;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/LockSettingsStorage$Cache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

.field private mVersion:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/LockSettingsStorage$Cache;->getVersion()I

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 531
    new-instance v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;-><init>(Lcom/android/server/LockSettingsStorage$Cache$CacheKey;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    .line 529
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsStorage$Cache;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/LockSettingsStorage$Cache;-><init>()V

    return-void
.end method

.method private declared-synchronized contains(ILjava/lang/String;I)Z
    .registers 6
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    monitor-enter p0

    .line 590
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getVersion()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 598
    :try_start_1
    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized peek(ILjava/lang/String;I)Ljava/lang/Object;
    .registers 6
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    monitor-enter p0

    .line 594
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized put(ILjava/lang/String;Ljava/lang/Object;I)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I

    .prologue
    monitor-enter p0

    .line 578
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;-><init>(Lcom/android/server/LockSettingsStorage$Cache$CacheKey;)V

    invoke-virtual {v1, p1, p2, p4}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    .line 576
    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I
    .param p5, "version"    # I

    .prologue
    monitor-enter p0

    .line 584
    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    if-ne v0, p5, :cond_e

    .line 585
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    .line 583
    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 613
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 614
    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    .line 612
    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method hasFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 556
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method hasKeyValue(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isFetched(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 572
    const-string/jumbo v0, ""

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method peekFile(Ljava/lang/String;)[B
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 552
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/LockSettingsStorage$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 535
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/LockSettingsStorage$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 536
    .local v0, "cached":Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/LockSettingsStorage;->-get0()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_c

    .end local v0    # "cached":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_b
    return-object p2

    .restart local v0    # "cached":Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_c
    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    goto :goto_b
.end method

.method putFile(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 560
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 559
    return-void
.end method

.method putFileIfUnchanged(Ljava/lang/String;[BI)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "version"    # I

    .prologue
    .line 564
    const/4 v1, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 563
    return-void
.end method

.method putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 543
    return-void
.end method

.method putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .param p4, "version"    # I

    .prologue
    .line 548
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 547
    return-void
.end method

.method declared-synchronized removeUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    .line 602
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1f

    .line 603
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    iget v1, v1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    if-ne v1, p1, :cond_1c

    .line 604
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 602
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 609
    :cond_1f
    iget v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    monitor-exit p0

    .line 601
    return-void

    .end local v0    # "i":I
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setFetched(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 568
    const-string/jumbo v0, "isFetched"

    const-string/jumbo v1, "true"

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 567
    return-void
.end method
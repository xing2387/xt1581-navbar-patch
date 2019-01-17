.class public Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# static fields
.field private static final ALWAYS_PRIORITY_STATES:[I

.field private static final TRANSITION_PRIORITY_STATES:[I


# instance fields
.field private mCachedActiveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedTransportControlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field private mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

.field private final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 41
    const/4 v0, 0x4

    .line 42
    const/4 v1, 0x5

    .line 43
    const/16 v2, 0x9

    .line 44
    const/16 v3, 0xa

    .line 40
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    .line 50
    const/4 v0, 0x6

    .line 51
    const/16 v1, 0x8

    .line 52
    const/4 v2, 0x3

    .line 49
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method private clearCache()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 395
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 396
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    .line 397
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    .line 398
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    .line 393
    return-void
.end method

.method private containsState(I[I)Z
    .registers 5
    .param p1, "state"    # I
    .param p2, "states"    # [I

    .prologue
    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_d

    .line 386
    aget v1, p2, v0

    if-ne v1, p1, :cond_a

    .line 387
    const/4 v1, 0x1

    return v1

    .line 385
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method private getPriorityListLocked(ZII)Ljava/util/ArrayList;
    .registers 16
    .param p1, "activeOnly"    # Z
    .param p2, "withFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v2, 0x0

    .line 317
    .local v2, "lastLocalIndex":I
    const/4 v1, 0x0

    .line 318
    .local v1, "lastActiveIndex":I
    const/4 v3, 0x0

    .line 320
    .local v3, "lastPublishedIndex":I
    iget-object v7, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 321
    .local v6, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v6, :cond_64

    .line 322
    iget-object v7, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    .line 324
    .local v5, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v7, -0x1

    if-eq p3, v7, :cond_25

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v7

    if-eq p3, v7, :cond_25

    .line 321
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 328
    :cond_25
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v8

    int-to-long v10, p2

    and-long/2addr v8, v10

    int-to-long v10, p2

    cmp-long v7, v8, v10

    if-nez v7, :cond_22

    .line 332
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v7

    if-nez v7, :cond_3c

    .line 333
    if-nez p1, :cond_22

    .line 336
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 341
    :cond_3c
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 344
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 345
    add-int/lit8 v2, v2, 0x1

    .line 346
    add-int/lit8 v1, v1, 0x1

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 348
    :cond_4d
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 352
    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 353
    add-int/lit8 v2, v2, 0x1

    .line 354
    add-int/lit8 v1, v1, 0x1

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 365
    :cond_5e
    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 370
    .end local v5    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_64
    return-object v4
.end method

.method private static isFromMostRecentApp(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 9
    .param p0, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v7, 0x0

    .line 75
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    if-eq v3, v4, :cond_c

    .line 76
    return v7

    .line 80
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 84
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    .line 80
    const/4 v5, 0x1

    .line 81
    const/16 v6, 0xf

    .line 80
    invoke-interface {v3, v5, v6, v4}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v2, :cond_27

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 94
    :cond_27
    return v7

    .line 86
    :cond_28
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 87
    .local v1, "recentTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_27

    .line 88
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_44} :catch_46

    move-result v3

    return v3

    .line 91
    .end local v1    # "recentTask":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_46
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    return v7
.end method

.method private shouldUpdatePriority(II)Z
    .registers 5
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v1, 0x1

    .line 374
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 375
    return v1

    .line 377
    :cond_a
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 378
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    .line 377
    if-eqz v0, :cond_1b

    .line 379
    return v1

    .line 381
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    .line 105
    invoke-static {p1}, Lcom/android/server/media/MediaSessionStack;->isFromMostRecentApp(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 106
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    .line 102
    :cond_10
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 289
    const/4 v5, -0x1

    .line 288
    invoke-direct {p0, v6, v6, v5}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v4

    .line 290
    .local v4, "sortedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 291
    .local v0, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Global priority session is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Sessions Stack - have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " sessions:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "indent":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5e
    if-ge v1, v0, :cond_6f

    .line 295
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 296
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3, p1, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 287
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_6f
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 171
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    .line 173
    :cond_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultMediaButtonSession(IZ)Lcom/android/server/media/MediaSessionRecord;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "includeNotPlaying"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 219
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 220
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    return-object v2

    .line 222
    :cond_12
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_19

    .line 223
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    return-object v2

    .line 225
    :cond_19
    invoke-direct {p0, v5, v5, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v1

    .line 227
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3b

    .line 228
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 229
    .local v0, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 232
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    .line 233
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    .line 242
    :cond_33
    :goto_33
    if-eqz p2, :cond_3b

    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    if-nez v2, :cond_3b

    .line 245
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    .line 248
    .end local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_3b
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    return-object v2

    .line 234
    .restart local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_3e
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_33

    .line 235
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 236
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    iput-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_33

    .line 239
    :cond_4f
    iput-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_33
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 271
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v2

    .line 273
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 274
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v3, :cond_1e

    .line 275
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 276
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b

    .line 277
    return-object v1

    .line 274
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 280
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1e
    const/4 v4, 0x0

    return-object v4
.end method

.method public getDefaultSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 200
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_9

    .line 201
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    return-object v1

    .line 203
    :cond_9
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    .line 204
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 205
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    return-object v1

    .line 207
    :cond_1b
    return-object v3
.end method

.method public getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 9
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 252
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 253
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    return-object v4

    .line 255
    :cond_11
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v4, :cond_18

    .line 256
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    return-object v4

    .line 258
    :cond_18
    const/4 v4, 0x1

    invoke-direct {p0, v4, v6, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v2

    .line 259
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 260
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v3, :cond_36

    .line 261
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 262
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1, v6}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 263
    iput-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 264
    return-object v1

    .line 260
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 267
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_36
    return-object v5
.end method

.method public getTransportControlSessions(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 187
    const/4 v0, 0x1

    .line 188
    const/4 v1, 0x2

    .line 187
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    .line 190
    :cond_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isGlobalPriorityActive()Z
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    goto :goto_5
.end method

.method public onPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionStack;->shouldUpdatePriority(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 133
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    .line 138
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    .line 139
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_18
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 144
    :cond_21
    return v1
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v0

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 155
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 159
    :cond_10
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    .line 153
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-ne p1, v0, :cond_c

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 120
    :cond_c
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    .line 115
    return-void
.end method

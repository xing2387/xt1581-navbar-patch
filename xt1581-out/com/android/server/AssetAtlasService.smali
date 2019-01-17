.class public Lcom/android/server/AssetAtlasService;
.super Landroid/view/IAssetAtlas$Stub;
.source "AssetAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AssetAtlasService$ComputeWorker;,
        Lcom/android/server/AssetAtlasService$Configuration;,
        Lcom/android/server/AssetAtlasService$Renderer;,
        Lcom/android/server/AssetAtlasService$WorkerResult;
    }
.end annotation


# static fields
.field public static final ASSET_ATLAS_SERVICE:Ljava/lang/String; = "assetatlas"

.field private static final ATLAS_MAP_ENTRY_FIELD_COUNT:I = 0x3

.field private static final DEBUG_ATLAS:Z = true

.field private static final DEBUG_ATLAS_TEXTURE:Z = false

.field private static final GRAPHIC_BUFFER_USAGE:I = 0x100

.field private static final LOG_TAG:Ljava/lang/String; = "AssetAtlas"

.field private static final MAX_SIZE:I = 0x800

.field private static final MIN_SIZE:I = 0x200

.field private static final PACKING_THRESHOLD:F = 0.8f

.field private static final STEP:I = 0x40


# instance fields
.field private mAtlasMap:[J

.field private final mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBuffer:Landroid/view/GraphicBuffer;

.field private final mContext:Landroid/content/Context;

.field private final mVersionName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/AssetAtlasService;)[J
    .registers 2

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[J

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/AssetAtlasService;[J)[J
    .registers 2

    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[J

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;
    .registers 2

    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p0, "buffer"    # Landroid/view/GraphicBuffer;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/AssetAtlasService;->nUploadAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 5
    .param p1, "bitmaps"    # Ljava/util/ArrayList;
    .param p2, "pixelCount"    # I
    .param p3, "versionName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AssetAtlasService;->chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2()V
    .registers 0

    invoke-static {}, Lcom/android/server/AssetAtlasService;->deleteDataFile()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/view/IAssetAtlas$Stub;-><init>()V

    .line 106
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {p1}, Lcom/android/server/AssetAtlasService;->queryVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/util/HashSet;

    const/16 v8, 0x12c

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 136
    .local v0, "bitmaps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    const/4 v7, 0x0

    .line 139
    .local v7, "totalPixelCount":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 140
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v2

    .line 142
    .local v2, "drawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 143
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v1, :cond_43

    .line 145
    :try_start_2a
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_33} :catch_38

    move-result v8

    add-int/2addr v7, v8

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 146
    :catch_38
    move-exception v6

    .line 147
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "AssetAtlas"

    const-string/jumbo v9, "Failed to fetch preloaded drawable state"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    throw v6

    .line 152
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_43
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    .local v5, "sortedBitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    new-instance v8, Lcom/android/server/AssetAtlasService$1;

    invoke-direct {v8, p0}, Lcom/android/server/AssetAtlasService$1;-><init>(Lcom/android/server/AssetAtlasService;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/AssetAtlasService$Renderer;

    invoke-direct {v9, p0, v5, v7}, Lcom/android/server/AssetAtlasService$Renderer;-><init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method

.method private checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z
    .registers 6
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-direct {p0, p2}, Lcom/android/server/AssetAtlasService;->getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "deviceBuildId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "buildId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 7
    .param p2, "pixelCount"    # I
    .param p3, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 451
    .local v0, "config":Lcom/android/server/AssetAtlasService$Configuration;
    invoke-static {}, Lcom/android/server/AssetAtlasService;->getDataFile()Ljava/io/File;

    move-result-object v1

    .line 452
    .local v1, "dataFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 453
    invoke-direct {p0, v1, p3}, Lcom/android/server/AssetAtlasService;->readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    .line 456
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :cond_f
    if-nez v0, :cond_1a

    .line 457
    invoke-static {p1, p2}, Lcom/android/server/AssetAtlasService;->computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    .line 458
    .local v0, "config":Lcom/android/server/AssetAtlasService$Configuration;
    if-eqz v0, :cond_1a

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/AssetAtlasService;->writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V

    .line 461
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :cond_1a
    return-object v0
.end method

.method private static computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 25
    .param p1, "pixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const-string/jumbo v8, "AssetAtlas"

    const-string/jumbo v9, "Computing best atlas configuration..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 360
    .local v12, "begin":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 363
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AssetAtlasService$WorkerResult;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v14

    .line 364
    .local v14, "cpuCount":I
    const/4 v8, 0x1

    if-ne v14, v8, :cond_a2

    .line 365
    new-instance v4, Lcom/android/server/AssetAtlasService$ComputeWorker;

    const/16 v5, 0x200

    const/16 v6, 0x800

    const/16 v7, 0x40

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4}, Lcom/android/server/AssetAtlasService$ComputeWorker;->run()V

    .line 398
    :cond_34
    monitor-enter v10

    .line 400
    :try_start_35
    new-instance v8, Lcom/android/server/AssetAtlasService$2;

    invoke-direct {v8}, Lcom/android/server/AssetAtlasService$2;-><init>()V

    invoke-static {v10, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 409
    const/4 v8, 0x0

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AssetAtlasService$WorkerResult;
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_10c

    .local v19, "result":Lcom/android/server/AssetAtlasService$WorkerResult;
    monitor-exit v10

    .line 413
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v12

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v15, v8, v9

    .line 414
    .local v15, "delay":F
    const-string/jumbo v8, "AssetAtlas"

    const-string/jumbo v9, "Found best atlas configuration (out of %d) in %.2fs"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 415
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 414
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v8, Lcom/android/server/AssetAtlasService$Configuration;

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->type:Landroid/graphics/Atlas$Type;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v8, v9, v0, v1, v2}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;III)V

    return-object v8

    .line 367
    .end local v15    # "delay":F
    .end local v19    # "result":Lcom/android/server/AssetAtlasService$WorkerResult;
    :cond_a2
    add-int/lit8 v8, v14, -0x1

    mul-int/lit8 v8, v8, 0x40

    add-int/lit16 v5, v8, 0x200

    .line 368
    .local v5, "start":I
    const/16 v6, 0x800

    .line 369
    .local v6, "end":I
    mul-int/lit8 v7, v14, 0x40

    .line 371
    .local v7, "step":I
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v11, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 373
    .local v11, "signal":Ljava/util/concurrent/CountDownLatch;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_b3
    move/from16 v0, v17

    if-ge v0, v14, :cond_e9

    .line 374
    new-instance v4, Lcom/android/server/AssetAtlasService$ComputeWorker;

    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    .line 376
    .local v4, "worker":Lcom/android/server/AssetAtlasService$ComputeWorker;
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Atlas Worker #"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 373
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v5, v5, -0x40

    add-int/lit8 v6, v6, -0x40

    goto :goto_b3

    .line 381
    .end local v4    # "worker":Lcom/android/server/AssetAtlasService$ComputeWorker;
    :cond_e9
    const-wide/16 v8, 0xa

    :try_start_eb
    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v20

    invoke-virtual {v11, v8, v9, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_f2
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_f2} :catch_100

    move-result v18

    .line 387
    .local v18, "isAllWorkerFinished":Z
    if-nez v18, :cond_34

    .line 390
    const-string/jumbo v8, "AssetAtlas"

    const-string/jumbo v9, "Could not complete configuration computation before timeout."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v8, 0x0

    return-object v8

    .line 382
    .end local v18    # "isAllWorkerFinished":Z
    :catch_100
    move-exception v16

    .line 383
    .local v16, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v8, "AssetAtlas"

    const-string/jumbo v9, "Could not complete configuration computation"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v8, 0x0

    return-object v8

    .line 398
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "step":I
    .end local v11    # "signal":Ljava/util/concurrent/CountDownLatch;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    .end local v17    # "i":I
    :catchall_10c
    move-exception v8

    monitor-exit v10

    throw v8
.end method

.method private static deleteDataFile()V
    .registers 2

    .prologue
    .line 432
    const-string/jumbo v0, "AssetAtlas"

    const-string/jumbo v1, "Current configuration inconsistent with assets list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lcom/android/server/AssetAtlasService;->getDataFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 434
    const-string/jumbo v0, "AssetAtlas"

    const-string/jumbo v1, "Could not delete the current configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_1c
    return-void
.end method

.method private getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.build.fingerprint"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    invoke-direct {p0}, Lcom/android/server/AssetAtlasService;->getFrameworkResourcesFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDataFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 427
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    .local v0, "systemDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "framework_atlas.config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getFrameworkResourcesFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 439
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/AssetAtlasService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static native nUploadAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z
.end method

.method private static queryVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 180
    const/high16 v4, 0x10000000

    .line 179
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 181
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v3

    .line 182
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 183
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "AssetAtlas"

    const-string/jumbo v4, "Could not get package info"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    const/4 v3, 0x0

    return-object v3
.end method

.method private readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 20
    .param p1, "file"    # Ljava/io/File;
    .param p2, "versionName"    # Ljava/lang/String;

    .prologue
    .line 503
    const/4 v12, 0x0

    .line 504
    .local v12, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 506
    .local v8, "config":Lcom/android/server/AssetAtlasService$Configuration;
    :try_start_2
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_13} :catch_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_13} :catch_7a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_54
    .catchall {:try_start_2 .. :try_end_13} :catchall_c4

    .line 508
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v13, "reader":Ljava/io/BufferedReader;
    :try_start_13
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1}, Lcom/android/server/AssetAtlasService;->checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_da

    .line 509
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/Atlas$Type;->valueOf(Ljava/lang/String;)Landroid/graphics/Atlas$Type;

    move-result-object v3

    .line 510
    .local v3, "type":Landroid/graphics/Atlas$Type;
    const/16 v14, 0x200

    const/16 v15, 0x800

    invoke-static {v13, v14, v15}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v4

    .line 511
    .local v4, "width":I
    const/16 v14, 0x200

    const/16 v15, 0x800

    invoke-static {v13, v14, v15}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v5

    .line 512
    .local v5, "height":I
    const/4 v14, 0x0

    const v15, 0x7fffffff

    invoke-static {v13, v14, v15}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v6

    .line 513
    .local v6, "count":I
    const/high16 v14, -0x80000000

    const v15, 0x7fffffff

    invoke-static {v13, v14, v15}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v7

    .line 515
    .local v7, "flags":I
    new-instance v2, Lcom/android/server/AssetAtlasService$Configuration;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;IIII)V
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_4b} :catch_d0
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_4b} :catch_d3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_4b} :catch_d6
    .catchall {:try_start_13 .. :try_end_4b} :catchall_cd

    .line 524
    .end local v3    # "type":Landroid/graphics/Atlas$Type;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "count":I
    .end local v7    # "flags":I
    .end local v8    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .local v2, "config":Lcom/android/server/AssetAtlasService$Configuration;
    :goto_4b
    if-eqz v13, :cond_50

    .line 526
    :try_start_4d
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_52

    :cond_50
    :goto_50
    move-object v12, v13

    .line 532
    .end local v13    # "reader":Ljava/io/BufferedReader;
    :goto_51
    return-object v2

    .line 527
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_52
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    goto :goto_50

    .line 521
    .end local v2    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_54
    move-exception v10

    .line 522
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_55
    :try_start_55
    const-string/jumbo v14, "AssetAtlas"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Could not read "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_55 .. :try_end_71} :catchall_c4

    .line 524
    if-eqz v12, :cond_76

    .line 526
    :try_start_73
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_78

    .end local v10    # "e":Ljava/io/IOException;
    :cond_76
    :goto_76
    move-object v2, v8

    .restart local v2    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_51

    .line 527
    .end local v2    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v10    # "e":Ljava/io/IOException;
    :catch_78
    move-exception v10

    goto :goto_76

    .line 519
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_7a
    move-exception v9

    .line 520
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/io/FileNotFoundException;
    :goto_7b
    :try_start_7b
    const-string/jumbo v14, "AssetAtlas"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Could not read "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_7b .. :try_end_97} :catchall_c4

    .line 524
    if-eqz v12, :cond_76

    .line 526
    :try_start_99
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_76

    .line 527
    :catch_9d
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_76

    .line 517
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_9f
    move-exception v11

    .line 518
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    :goto_a0
    :try_start_a0
    const-string/jumbo v14, "AssetAtlas"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid parameter value in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bc
    .catchall {:try_start_a0 .. :try_end_bc} :catchall_c4

    .line 524
    if-eqz v12, :cond_76

    .line 526
    :try_start_be
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    goto :goto_76

    .line 527
    :catch_c2
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_76

    .line 523
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_c4
    move-exception v14

    .line 524
    :goto_c5
    if-eqz v12, :cond_ca

    .line 526
    :try_start_c7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    .line 523
    :cond_ca
    :goto_ca
    throw v14

    .line 527
    :catch_cb
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_ca

    .line 523
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catchall_cd
    move-exception v14

    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v12, "reader":Ljava/io/BufferedReader;
    goto :goto_c5

    .line 517
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_d0
    move-exception v11

    .restart local v11    # "e":Ljava/lang/IllegalArgumentException;
    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_a0

    .line 519
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_d3
    move-exception v9

    .restart local v9    # "e":Ljava/io/FileNotFoundException;
    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_7b

    .line 521
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_d6
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_55

    .end local v10    # "e":Ljava/io/IOException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :cond_da
    move-object v2, v8

    .restart local v2    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto/16 :goto_4b
.end method

.method private static readInt(Ljava/io/BufferedReader;II)I
    .registers 4
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V
    .registers 11
    .param p1, "config"    # Lcom/android/server/AssetAtlasService$Configuration;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "versionName"    # Ljava/lang/String;

    .prologue
    .line 468
    const/4 v2, 0x0

    .line 470
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_10} :catch_82
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_5f
    .catchall {:try_start_1 .. :try_end_10} :catchall_a5

    .line 471
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_10
    invoke-direct {p0, p3}, Lcom/android/server/AssetAtlasService;->getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 473
    iget-object v4, p1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    invoke-virtual {v4}, Landroid/graphics/Atlas$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 475
    iget v4, p1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 477
    iget v4, p1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 479
    iget v4, p1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 481
    iget v4, p1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_56} :catch_b1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_56} :catch_b4
    .catchall {:try_start_10 .. :try_end_56} :catchall_ae

    .line 488
    if-eqz v3, :cond_5b

    .line 490
    :try_start_58
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5d

    :cond_5b
    :goto_5b
    move-object v2, v3

    .line 467
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_5c
    :goto_5c
    return-void

    .line 491
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_5d
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_5b

    .line 485
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_5f
    move-exception v1

    .line 486
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_60
    :try_start_60
    const-string/jumbo v4, "AssetAtlas"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_a5

    .line 488
    if-eqz v2, :cond_5c

    .line 490
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_5c

    .line 491
    :catch_80
    move-exception v1

    goto :goto_5c

    .line 483
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_82
    move-exception v0

    .line 484
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_83
    :try_start_83
    const-string/jumbo v4, "AssetAtlas"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_83 .. :try_end_9d} :catchall_a5

    .line 488
    if-eqz v2, :cond_5c

    .line 490
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_5c

    .line 491
    :catch_a3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5c

    .line 487
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_a5
    move-exception v4

    .line 488
    :goto_a6
    if-eqz v2, :cond_ab

    .line 490
    :try_start_a8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    .line 487
    :cond_ab
    :goto_ab
    throw v4

    .line 491
    :catch_ac
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_ab

    .line 487
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catchall_ae
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    goto :goto_a6

    .line 483
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_b1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_83

    .line 485
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_b4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_60
.end method


# virtual methods
.method public getBuffer()Landroid/view/GraphicBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMap()[J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[J

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCompatible(I)Z
    .registers 3
    .param p1, "ppid"    # I

    .prologue
    .line 337
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public systemRunning()V
    .registers 1

    .prologue
    .line 192
    return-void
.end method

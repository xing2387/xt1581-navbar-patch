.class Lcom/android/server/pm/PackageManagerService$PackageUsage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUsage"
.end annotation


# static fields
.field private static final USAGE_FILE_MAGIC:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_"

.field private static final USAGE_FILE_MAGIC_VERSION_1:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_1"

.field private static final WRITE_INTERVAL:I = 0x1b7740


# instance fields
.field private final mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFileLock:Ljava/lang/Object;

.field private mIsHistoricalPackageUsageAvailable:Z

.field private final mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    .line 1178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1179
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    .line 1173
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageUsage;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method private getFile()Landroid/util/AtomicFile;
    .registers 5

    .prologue
    .line 1361
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1362
    .local v0, "dataDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1363
    .local v2, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "package-usage.list"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1364
    .local v1, "fname":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private parseAsLong(Ljava/lang/String;)J
    .registers 6
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1332
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v2

    return-wide v2

    .line 1333
    :catch_5
    move-exception v0

    .line 1334
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " as a long."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1339
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1344
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1346
    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1347
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 1348
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_13

    .line 1349
    const/4 v1, 0x0

    return-object v1

    .line 1351
    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1353
    :cond_1c
    if-ne v0, p3, :cond_23

    .line 1354
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1356
    :cond_23
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method private readVersion0LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 14
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "firstLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1284
    move-object v0, p3

    .local v0, "line":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_56

    .line 1285
    const-string/jumbo v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1286
    .local v6, "tokens":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2f

    .line 1287
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to parse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1288
    const-string/jumbo v9, " as package-timestamp pair."

    .line 1287
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1291
    :cond_2f
    const/4 v7, 0x0

    aget-object v1, v6, v7

    .line 1292
    .local v1, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1293
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_43

    .line 1284
    :cond_3e
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1297
    :cond_43
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1298
    .local v4, "timestamp":J
    const/4 v3, 0x0

    .line 1299
    .local v3, "reason":I
    :goto_4b
    const/16 v7, 0x8

    .line 1298
    if-ge v3, v7, :cond_3e

    .line 1301
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    aput-wide v4, v7, v3

    .line 1300
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 1280
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "reason":I
    .end local v4    # "timestamp":J
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_56
    return-void
.end method

.method private readVersion1LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    .registers 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1310
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_56

    .line 1311
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1312
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    const/16 v6, 0x9

    if-eq v5, v6, :cond_33

    .line 1313
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " as a timestamp array."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1316
    :cond_33
    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 1317
    .local v1, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1318
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    .line 1322
    const/4 v3, 0x0

    .line 1323
    .local v3, "reason":I
    :goto_43
    const/16 v5, 0x8

    .line 1322
    if-ge v3, v5, :cond_0

    .line 1325
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    add-int/lit8 v6, v3, 0x1

    aget-object v6, v4, v6

    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v3

    .line 1324
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 1306
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "reason":I
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_56
    return-void
.end method

.method private writeInternal()V
    .registers 19

    .prologue
    .line 1211
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 1212
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_c6

    .line 1213
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_c3

    move-result-object v4

    .line 1214
    .local v4, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 1216
    .local v3, "f":Ljava/io/FileOutputStream;
    :try_start_11
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1217
    .local v3, "f":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1218
    .local v5, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 1219
    const/16 v14, 0x1a0

    const/16 v15, 0x3e8

    const/16 v16, 0x408

    .line 1218
    move/from16 v0, v16

    invoke-static {v9, v14, v15, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1220
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1222
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1224
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v14, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pkg$iterator":Ljava/util/Iterator;
    :cond_58
    :goto_58
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_bc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 1227
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v6}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_58

    .line 1230
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1231
    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    iget-object v14, v6, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    const/4 v9, 0x0

    array-length v15, v14

    :goto_7b
    if-ge v9, v15, :cond_8c

    aget-wide v10, v14, v9

    .line 1233
    .local v10, "usageTimeInMillis":J
    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1232
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    .line 1236
    .end local v10    # "usageTimeInMillis":J
    :cond_8c
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v14, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_9e} :catch_9f
    .catchall {:try_start_11 .. :try_end_9e} :catchall_c3

    goto :goto_58

    .line 1241
    .end local v3    # "f":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "pkg$iterator":Ljava/util/Iterator;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catch_9f
    move-exception v2

    .line 1242
    .local v2, "e":Ljava/io/IOException;
    if-eqz v3, :cond_a5

    .line 1243
    :try_start_a2
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1245
    :cond_a5
    const-string/jumbo v9, "PackageManager"

    const-string/jumbo v14, "Failed to write package usage times"

    invoke-static {v9, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_a2 .. :try_end_ae} :catchall_c3

    .end local v2    # "e":Ljava/io/IOException;
    :goto_ae
    :try_start_ae
    monitor-exit v13
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_c6

    monitor-exit v12

    .line 1249
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1210
    return-void

    .line 1239
    .restart local v3    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_bc
    :try_start_bc
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1240
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c2} :catch_9f
    .catchall {:try_start_bc .. :try_end_c2} :catchall_c3

    goto :goto_ae

    .line 1212
    .end local v3    # "f":Ljava/io/FileOutputStream;
    .end local v4    # "file":Landroid/util/AtomicFile;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "pkg$iterator":Ljava/util/Iterator;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_c3
    move-exception v9

    :try_start_c4
    monitor-exit v13

    throw v9
    :try_end_c6
    .catchall {:try_start_c4 .. :try_end_c6} :catchall_c6

    .line 1211
    :catchall_c6
    move-exception v9

    monitor-exit v12

    throw v9
.end method


# virtual methods
.method isHistoricalPackageUsageAvailable()Z
    .registers 2

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return v0
.end method

.method readLP()V
    .registers 11

    .prologue
    .line 1253
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1254
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_41

    move-result-object v2

    .line 1255
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    .line 1257
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_8
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_11} :catch_5f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_61
    .catchall {:try_start_8 .. :try_end_11} :catchall_57

    .line 1258
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v5, "in":Ljava/io/BufferedInputStream;
    :try_start_11
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1260
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_19} :catch_38
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_48
    .catchall {:try_start_11 .. :try_end_19} :catchall_5c

    move-result-object v3

    .line 1261
    .local v3, "firstLine":Ljava/lang/String;
    if-nez v3, :cond_2b

    .line 1273
    :goto_1c
    :try_start_1c
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_41

    move-object v4, v5

    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :goto_20
    monitor-exit v8

    .line 1276
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1252
    return-void

    .line 1263
    .restart local v3    # "firstLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_2b
    :try_start_2b
    const-string/jumbo v7, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 1264
    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readVersion1LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_48
    .catchall {:try_start_2b .. :try_end_37} :catchall_5c

    goto :goto_1c

    .line 1268
    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_38
    move-exception v1

    .local v1, "expected":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 1269
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    :goto_3a
    const/4 v7, 0x0

    :try_start_3b
    iput-boolean v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_57

    .line 1273
    :try_start_3d
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_20

    .line 1253
    .end local v1    # "expected":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :catchall_41
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1266
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v3    # "firstLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_44
    :try_start_44
    invoke-direct {p0, v5, v6, v3}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readVersion0LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_47} :catch_38
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_5c

    goto :goto_1c

    .line 1270
    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_48
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 1271
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    :goto_4a
    :try_start_4a
    const-string/jumbo v7, "PackageManager"

    const-string/jumbo v9, "Failed to read package usage times"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_57

    .line 1273
    :try_start_53
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_20

    .line 1272
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_57
    move-exception v7

    .line 1273
    :goto_58
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1272
    throw v7
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_41

    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    :catchall_5c
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    goto :goto_58

    .line 1268
    .local v4, "in":Ljava/io/BufferedInputStream;
    :catch_5f
    move-exception v1

    .restart local v1    # "expected":Ljava/io/FileNotFoundException;
    goto :goto_3a

    .line 1270
    .end local v1    # "expected":Ljava/io/FileNotFoundException;
    :catch_61
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4a
.end method

.method write(Z)V
    .registers 6
    .param p1, "force"    # Z

    .prologue
    .line 1188
    if-eqz p1, :cond_6

    .line 1189
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    .line 1190
    return-void

    .line 1192
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 1194
    return-void

    .line 1196
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1197
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;

    const-string/jumbo v1, "PackageUsage_DiskWriter"

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageUsage;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->start()V

    .line 1187
    :cond_2e
    return-void
.end method

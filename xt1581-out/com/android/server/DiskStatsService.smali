.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiskStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 16
    .param p1, "path"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-wide/16 v10, 0x0

    .line 93
    :try_start_2
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 94
    .local v5, "statfs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 95
    .local v2, "bsize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 96
    .local v0, "avail":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v6, v8

    .line 97
    .local v6, "total":J
    cmp-long v8, v2, v10

    if-lez v8, :cond_22

    cmp-long v8, v6, v10

    if-gtz v8, :cond_64

    .line 98
    :cond_22
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid stat: bsize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " avail="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " total="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 98
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_52} :catch_52

    .line 110
    .end local v0    # "avail":J
    .end local v2    # "bsize":J
    .end local v5    # "statfs":Landroid/os/StatFs;
    .end local v6    # "total":J
    :catch_52
    move-exception v4

    .line 111
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v8, "-Error: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    return-void

    .line 102
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "avail":J
    .restart local v2    # "bsize":J
    .restart local v5    # "statfs":Landroid/os/StatFs;
    .restart local v6    # "total":J
    :cond_64
    :try_start_64
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v8, "-Free: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    mul-long v8, v0, v2

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 105
    const-string/jumbo v8, "K / "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    mul-long v8, v6, v2

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 107
    const-string/jumbo v8, "K total = "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v0

    div-long/2addr v8, v6

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 109
    const-string/jumbo v8, "% free"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_96} :catch_52

    .line 91
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 47
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.DUMP"

    const-string/jumbo v15, "DiskStatsService"

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/16 v13, 0x200

    new-array v11, v13, [B

    .line 51
    .local v11, "junk":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_12
    array-length v13, v11

    if-ge v10, v13, :cond_1b

    int-to-byte v13, v10

    aput-byte v13, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 53
    :cond_1b
    new-instance v12, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "system/perftest.tmp"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v12, "tmp":Ljava/io/File;
    const/4 v8, 0x0

    .line 55
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 57
    .local v7, "error":Ljava/io/IOException;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 59
    .local v4, "before":J
    :try_start_2d
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_9a
    .catchall {:try_start_2d .. :try_end_32} :catchall_a4

    .line 60
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_32
    invoke-virtual {v9, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_c8
    .catchall {:try_start_32 .. :try_end_35} :catchall_c5

    .line 64
    if-eqz v9, :cond_3a

    :try_start_37
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_98

    :cond_3a
    :goto_3a
    move-object v8, v9

    .line 67
    .end local v7    # "error":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_3b
    :goto_3b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 68
    .local v2, "after":J
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_48

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 70
    :cond_48
    if-eqz v7, :cond_ad

    .line 71
    const-string/jumbo v13, "Test-Error: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    :goto_5b
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "Data"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 80
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "Cache"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 81
    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "/system"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "System"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 83
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v13

    if-eqz v13, :cond_97

    .line 84
    const-string/jumbo v13, "File-based Encryption: true"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    :cond_97
    return-void

    .line 64
    .end local v2    # "after":J
    .restart local v7    # "error":Ljava/io/IOException;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_98
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    goto :goto_3a

    .line 61
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_9a
    move-exception v6

    .line 62
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_9b
    move-object v7, v6

    .line 64
    .local v7, "error":Ljava/io/IOException;
    if-eqz v8, :cond_3b

    :try_start_9e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_3b

    :catch_a2
    move-exception v6

    goto :goto_3b

    .line 63
    .end local v6    # "e":Ljava/io/IOException;
    .local v7, "error":Ljava/io/IOException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_a4
    move-exception v13

    .line 64
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_a5
    if-eqz v8, :cond_aa

    :try_start_a7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    .line 63
    :cond_aa
    :goto_aa
    throw v13

    .line 64
    :catch_ab
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_aa

    .line 74
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "error":Ljava/io/IOException;
    .restart local v2    # "after":J
    :cond_ad
    const-string/jumbo v13, "Latency: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    sub-long v14, v2, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 76
    const-string/jumbo v13, "ms [512B Data Write]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5b

    .line 63
    .end local v2    # "after":J
    .restart local v7    # "error":Ljava/io/IOException;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_c5
    move-exception v13

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    goto :goto_a5

    .line 61
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_c8
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_9b
.end method

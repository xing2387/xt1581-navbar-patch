.class Lcom/motorola/server/MotoPersDataBlockService$1;
.super Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub;
.source "MotoPersDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/MotoPersDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/MotoPersDataBlockService;


# direct methods
.method constructor <init>(Lcom/motorola/server/MotoPersDataBlockService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/motorola/server/MotoPersDataBlockService;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-direct {p0}, Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaximumDataBlockSize(I)J
    .registers 6
    .param p1, "partition"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v1}, Lcom/motorola/server/MotoPersDataBlockService;->-get1(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .line 198
    .local v0, "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    if-nez v0, :cond_28

    .line 199
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown partition id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_28
    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v1, v0}, Lcom/motorola/server/MotoPersDataBlockService;->-wrap2(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V

    .line 203
    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v1, v0}, Lcom/motorola/server/MotoPersDataBlockService;->-wrap1(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J

    move-result-wide v2

    return-wide v2
.end method

.method public read(I)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .param p1, "partition"    # I

    .prologue
    const/4 v9, 0x0

    .line 168
    iget-object v7, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v7}, Lcom/motorola/server/MotoPersDataBlockService;->-get1(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .line 169
    .local v3, "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    if-nez v3, :cond_29

    .line 170
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown partition id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 172
    :cond_29
    iget-object v7, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v7, v3}, Lcom/motorola/server/MotoPersDataBlockService;->-wrap2(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V

    .line 174
    const/4 v2, 0x0

    .line 175
    .local v2, "data":[B
    const/4 v0, 0x0

    .line 176
    .local v0, "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_start_30
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 177
    new-instance v7, Ljava/io/File;

    iget-object v8, v3, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000000

    .line 176
    invoke-static {v7, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_42} :catch_bc
    .catchall {:try_start_30 .. :try_end_42} :catchall_b5

    .line 178
    .end local v0    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .local v1, "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    if-eqz v1, :cond_8d

    .line 179
    :try_start_44
    iget-object v7, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v7, v3}, Lcom/motorola/server/MotoPersDataBlockService;->-wrap1(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J

    move-result-wide v10

    long-to-int v6, v10

    .line 180
    .local v6, "max":I
    iget-object v7, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v7}, Lcom/motorola/server/MotoPersDataBlockService;->-get2(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_52} :catch_79
    .catchall {:try_start_44 .. :try_end_52} :catchall_b8

    .line 181
    :try_start_52
    invoke-static {v1, v6}, Lcom/motorola/server/MotoPersDataBlockService;->-wrap0(Ljava/io/FileInputStream;I)[B
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_76

    move-result-object v2

    .local v2, "data":[B
    :try_start_56
    monitor-exit v7

    .line 183
    if-eqz v2, :cond_8d

    .line 184
    const-string/jumbo v7, "persdata"

    invoke-static {v2, v7}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5f} :catch_79
    .catchall {:try_start_56 .. :try_end_5f} :catchall_b8

    move-result-object v8

    .line 191
    if-eqz v1, :cond_65

    :try_start_62
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_65} :catch_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_65} :catch_69
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_96

    :cond_65
    move-object v7, v9

    :goto_66
    if-eqz v7, :cond_8c

    :try_start_68
    throw v7
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_69} :catch_69
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_69} :catch_96

    .line 187
    .end local v2    # "data":[B
    .end local v6    # "max":I
    :catch_69
    move-exception v4

    .local v4, "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .line 188
    .end local v1    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :goto_6b
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "partition not available?"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_75
    return-object v9

    .line 180
    .restart local v1    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .local v2, "data":[B
    .restart local v6    # "max":I
    :catchall_76
    move-exception v8

    :try_start_77
    monitor-exit v7

    throw v8
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_79} :catch_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_b8

    .line 191
    .end local v2    # "data":[B
    .end local v6    # "max":I
    :catch_79
    move-exception v7

    move-object v0, v1

    .end local v1    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :goto_7b
    :try_start_7b
    throw v7
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_80
    if-eqz v0, :cond_85

    :try_start_82
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_85} :catch_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_85} :catch_88
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_b2

    :cond_85
    :goto_85
    if-eqz v8, :cond_b4

    :try_start_87
    throw v8
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_88} :catch_88
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_88} :catch_b2

    .line 187
    :catch_88
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    goto :goto_6b

    .line 191
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .local v2, "data":[B
    .restart local v6    # "max":I
    :catch_8a
    move-exception v7

    goto :goto_66

    .line 184
    :cond_8c
    return-object v8

    .line 191
    .end local v2    # "data":[B
    .end local v6    # "max":I
    :cond_8d
    if-eqz v1, :cond_92

    :try_start_8f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_92} :catch_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_92} :catch_69
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_96

    :cond_92
    move-object v7, v9

    :goto_93
    if-eqz v7, :cond_a5

    :try_start_95
    throw v7
    :try_end_96
    .catch Ljava/io/FileNotFoundException; {:try_start_95 .. :try_end_96} :catch_69
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_96} :catch_96

    .line 189
    :catch_96
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 190
    .end local v1    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :goto_98
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "partition not available?"

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 191
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :catch_a3
    move-exception v7

    goto :goto_93

    :cond_a5
    move-object v0, v1

    .end local v1    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .local v0, "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    goto :goto_75

    .end local v0    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :catch_a7
    move-exception v10

    if-nez v8, :cond_ac

    move-object v8, v10

    goto :goto_85

    :cond_ac
    if-eq v8, v10, :cond_85

    :try_start_ae
    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_85

    .line 189
    :catch_b2
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_98

    .line 191
    .end local v5    # "e":Ljava/io/IOException;
    :cond_b4
    throw v7
    :try_end_b5
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_b5} :catch_88
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b5} :catch_b2

    .local v0, "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .local v2, "data":[B
    :catchall_b5
    move-exception v7

    move-object v8, v9

    goto :goto_80

    .end local v0    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v2    # "data":[B
    .restart local v1    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :catchall_b8
    move-exception v7

    move-object v8, v9

    move-object v0, v1

    .end local v1    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .local v0, "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    goto :goto_80

    .local v0, "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v2    # "data":[B
    :catch_bc
    move-exception v7

    goto :goto_7b
.end method

.method public write(ILandroid/os/ParcelFileDescriptor;)I
    .registers 19
    .param p1, "partition"    # I
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_13

    .line 106
    :try_start_5
    const-string/jumbo v12, "sys.copy_clogo"

    const-string/jumbo v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_e} :catch_10

    .line 107
    const/4 v12, 0x1

    return v12

    .line 108
    :catch_10
    move-exception v6

    .line 109
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v12, -0x1

    return v12

    .line 113
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v12}, Lcom/motorola/server/MotoPersDataBlockService;->-get1(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/util/ArrayList;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .line 114
    .local v3, "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    if-nez v3, :cond_41

    .line 115
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown partition id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 117
    :cond_41
    iget-boolean v12, v3, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mWritable:Z

    if-nez v12, :cond_61

    .line 118
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Readonly: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 120
    :cond_61
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v12, v3}, Lcom/motorola/server/MotoPersDataBlockService;->-wrap2(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "data":[B
    if-eqz p2, :cond_94

    .line 124
    const/4 v13, 0x0

    const/4 v7, 0x0

    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_6d
    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_74} :catch_a4
    .catchall {:try_start_6d .. :try_end_74} :catchall_150

    .line 125
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-static {v12}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v12

    invoke-static {v8, v12}, Lcom/motorola/server/MotoPersDataBlockService;->-wrap0(Ljava/io/FileInputStream;I)[B
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7f} :catch_157
    .catchall {:try_start_74 .. :try_end_7f} :catchall_153

    move-result-object v2

    .line 128
    .local v2, "data":[B
    if-eqz v8, :cond_85

    :try_start_82
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_85} :catch_a2
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_88

    :cond_85
    :goto_85
    if-eqz v13, :cond_94

    :try_start_87
    throw v13
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_88} :catch_88

    .line 126
    :catch_88
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move-object v7, v8

    .line 127
    .end local v2    # "data":[B
    .end local v8    # "fis":Ljava/io/FileInputStream;
    :goto_8a
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "Unable to read data stream"

    invoke-static {v12, v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v5    # "e":Ljava/io/IOException;
    :cond_94
    if-nez v2, :cond_c0

    .line 131
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "No data to write"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v12, -0x1

    return v12

    .line 128
    .restart local v2    # "data":[B
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_a2
    move-exception v13

    goto :goto_85

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v2, "data":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_a4
    move-exception v12

    .end local v7    # "fis":Ljava/io/FileInputStream;
    :goto_a5
    :try_start_a5
    throw v12
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a6

    :catchall_a6
    move-exception v13

    move-object v15, v13

    move-object v13, v12

    move-object v12, v15

    :goto_aa
    if-eqz v7, :cond_af

    :try_start_ac
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_af} :catch_b4
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b2

    :cond_af
    :goto_af
    if-eqz v13, :cond_bf

    :try_start_b1
    throw v13

    .line 126
    :catch_b2
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_8a

    .line 128
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b4
    move-exception v14

    if-nez v13, :cond_b9

    move-object v13, v14

    goto :goto_af

    :cond_b9
    if-eq v13, v14, :cond_af

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_af

    :cond_bf
    throw v12
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_c0} :catch_b2

    .line 136
    .end local v2    # "data":[B
    :cond_c0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v12, v3}, Lcom/motorola/server/MotoPersDataBlockService;->-wrap1(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J

    move-result-wide v10

    .line 137
    .local v10, "maxBlockSize":J
    array-length v12, v2

    int-to-long v12, v12

    cmp-long v12, v12, v10

    if-lez v12, :cond_d1

    .line 138
    neg-long v12, v10

    long-to-int v12, v12

    return v12

    .line 143
    :cond_d1
    :try_start_d1
    new-instance v9, Ljava/io/DataOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/io/File;

    iget-object v14, v3, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPath:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e2
    .catch Ljava/io/FileNotFoundException; {:try_start_d1 .. :try_end_e2} :catch_f4

    .line 150
    .local v9, "outputStream":Ljava/io/DataOutputStream;
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-static {v12}, Lcom/motorola/server/MotoPersDataBlockService;->-get2(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_eb} :catch_110
    .catchall {:try_start_e2 .. :try_end_eb} :catchall_13f

    .line 151
    :try_start_eb
    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 152
    array-length v12, v2
    :try_end_ef
    .catchall {:try_start_eb .. :try_end_ef} :catchall_10d

    :try_start_ef
    monitor-exit v13
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f0} :catch_110
    .catchall {:try_start_ef .. :try_end_f0} :catchall_13f

    .line 159
    :try_start_f0
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_101

    .line 152
    :goto_f3
    return v12

    .line 144
    .end local v9    # "outputStream":Ljava/io/DataOutputStream;
    :catch_f4
    move-exception v4

    .line 145
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "partition not available?"

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/4 v12, -0x1

    return v12

    .line 160
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "outputStream":Ljava/io/DataOutputStream;
    :catch_101
    move-exception v5

    .line 161
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "failed closing output stream"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f3

    .line 150
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_10d
    move-exception v12

    :try_start_10e
    monitor-exit v13

    throw v12
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_110} :catch_110
    .catchall {:try_start_10e .. :try_end_110} :catchall_13f

    .line 154
    :catch_110
    move-exception v5

    .line 155
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_111
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "failed writing to the "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12e
    .catchall {:try_start_111 .. :try_end_12e} :catchall_13f

    .line 156
    const/4 v12, -0x1

    .line 159
    :try_start_12f
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_133

    .line 156
    :goto_132
    return v12

    .line 160
    :catch_133
    move-exception v5

    .line 161
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "failed closing output stream"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_132

    .line 157
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_13f
    move-exception v12

    .line 159
    :try_start_140
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_144

    .line 157
    :goto_143
    throw v12

    .line 160
    :catch_144
    move-exception v5

    .line 161
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "failed closing output stream"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_143

    .line 128
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "outputStream":Ljava/io/DataOutputStream;
    .end local v10    # "maxBlockSize":J
    .restart local v2    # "data":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_150
    move-exception v12

    goto/16 :goto_aa

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_153
    move-exception v12

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    goto/16 :goto_aa

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_157
    move-exception v12

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a5
.end method

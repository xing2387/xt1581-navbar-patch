.class Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbBackupTask"
.end annotation


# instance fields
.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

.field mCompress:Z

.field mCurrentPassword:Ljava/lang/String;

.field mCurrentTarget:Landroid/content/pm/PackageInfo;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 18
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "packages"    # [Ljava/lang/String;
    .param p14, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 3999
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 4003
    invoke-direct {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 4004
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4006
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 4007
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    .line 4008
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    .line 4009
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z

    .line 4010
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    .line 4011
    iput-boolean p10, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    .line 4012
    iput-boolean p11, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    .line 4013
    if-nez p13, :cond_32

    .line 4014
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4013
    :goto_1e
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 4016
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 4021
    if-eqz p9, :cond_2d

    const-string/jumbo v1, ""

    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 4022
    :cond_2d
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 4029
    :goto_2f
    iput-boolean p12, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    .line 4002
    return-void

    .line 4015
    :cond_32
    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p13 .. p13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1e

    .line 4024
    :cond_3c
    iput-object p9, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_2f
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 26
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->-wrap8(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v17

    .line 4050
    .local v17, "newUserSalt":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "PBKDF2WithHmacSHA1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 4051
    const/16 v22, 0x2710

    .line 4050
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v18

    .line 4054
    .local v18, "userKey":Ljavax/crypto/SecretKey;
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v13, v0, [B

    .line 4055
    .local v13, "masterPw":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->-wrap8(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v9

    .line 4059
    .local v9, "checksumSalt":[B
    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 4060
    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v19, "AES"

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4061
    .local v12, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 4062
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 4065
    .local v11, "finalOutput":Ljava/io/OutputStream;
    const-string/jumbo v19, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4066
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4069
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4072
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4074
    const/16 v19, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4075
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4078
    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 4079
    .local v15, "mkC":Ljavax/crypto/Cipher;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 4081
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .line 4082
    .local v5, "IV":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4083
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4095
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .line 4096
    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 4097
    .local v14, "mk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "PBKDF2WithHmacSHA1"

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v21

    .line 4098
    const/16 v22, 0x2710

    .line 4097
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v8

    .line 4100
    .local v8, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, v5

    move/from16 v19, v0

    array-length v0, v14

    move/from16 v20, v0

    add-int v19, v19, v20

    .line 4101
    array-length v0, v8

    move/from16 v20, v0

    .line 4100
    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 4102
    .local v6, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4103
    .local v16, "mkOut":Ljava/io/DataOutputStream;
    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4104
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 4105
    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4106
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    .line 4107
    array-length v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4108
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 4109
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 4110
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    .line 4111
    .local v10, "encryptedMk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4112
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4114
    return-object v11
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 4120
    const/16 v2, 0x400

    :try_start_2
    new-array v1, v2, [B

    .line 4121
    .local v1, "eof":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 4117
    .end local v1    # "eof":[B
    :goto_7
    return-void

    .line 4122
    :catch_8
    move-exception v0

    .line 4123
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4033
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkgName$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4034
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4036
    :try_start_16
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 4037
    const/16 v5, 0x40

    .line 4036
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4038
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_25} :catch_26

    goto :goto_4

    .line 4039
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_26
    move-exception v0

    .line 4040
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", skipping"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4032
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_49
    return-void
.end method

.method public execute()V
    .registers 1

    .prologue
    .line 4335
    return-void
.end method

.method public handleTimeout()V
    .registers 5

    .prologue
    .line 4346
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 4348
    .local v0, "target":Landroid/content/pm/PackageInfo;
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adb backup timeout of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    if-eqz v0, :cond_27

    .line 4351
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 4345
    :cond_27
    return-void
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .prologue
    .line 4340
    return-void
.end method

.method public run()V
    .registers 32

    .prologue
    .line 4129
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "--- Performing full-dataset adb backup ---"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    new-instance v29, Ljava/util/TreeMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/TreeMap;-><init>()V

    .line 4132
    .local v29, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v26, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 4133
    .local v26, "obbConnection":Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    .line 4135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendStartBackup()V

    .line 4138
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    if-eqz v3, :cond_5d

    .line 4139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4140
    const/16 v4, 0x40

    .line 4139
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v11

    .line 4141
    .local v11, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_35
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_5d

    .line 4142
    move/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 4144
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v3, :cond_53

    .line 4145
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5a

    .line 4146
    :cond_53
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4141
    :cond_5a
    add-int/lit8 v23, v23, 0x1

    goto :goto_35

    .line 4153
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v23    # "i":I
    :cond_5d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v3, :cond_73

    .line 4156
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v30

    .line 4157
    .local v30, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v30, :cond_73

    .line 4168
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 4175
    .end local v30    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_73
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_84

    .line 4176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 4182
    :cond_84
    invoke-virtual/range {v29 .. v29}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 4183
    .local v25, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :cond_8c
    :goto_8c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 4184
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 4185
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 4186
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    .line 4185
    if-nez v3, :cond_b4

    .line 4187
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 4185
    if-eqz v3, :cond_8c

    .line 4188
    :cond_b4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    goto :goto_8c

    .line 4194
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_b8
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual/range {v29 .. v29}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4195
    .local v12, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v28, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4196
    .local v28, "ofstream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 4198
    .local v5, "out":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 4200
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    if-eqz v3, :cond_14f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_14f

    const/16 v18, 0x1

    .line 4203
    .local v18, "encrypting":Z
    :goto_e4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v3

    if-eqz v3, :cond_f0

    if-eqz v18, :cond_152

    .line 4208
    :cond_f0
    move-object/from16 v19, v28

    .line 4212
    .local v19, "finalOutput":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ad

    .line 4213
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Backup password mismatch; aborting"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_109} :catch_292
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_109} :catch_35c
    .catchall {:try_start_d2 .. :try_end_109} :catchall_41f

    .line 4315
    :try_start_109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_110} :catch_484

    .line 4319
    :goto_110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4320
    :try_start_117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_120
    .catchall {:try_start_117 .. :try_end_120} :catchall_1a7

    monitor-exit v4

    .line 4322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4323
    :try_start_126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_135
    .catchall {:try_start_126 .. :try_end_135} :catchall_1aa

    monitor-exit v4

    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4214
    return-void

    .line 4200
    .end local v18    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    :cond_14f
    const/16 v18, 0x0

    .restart local v18    # "encrypting":Z
    goto :goto_e4

    .line 4204
    :cond_152
    :try_start_152
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15b
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_15b} :catch_292
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_15b} :catch_35c
    .catchall {:try_start_152 .. :try_end_15b} :catchall_41f

    .line 4315
    :try_start_15b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_162} :catch_487

    .line 4319
    :goto_162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4320
    :try_start_169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_172
    .catchall {:try_start_169 .. :try_end_172} :catchall_1a1

    monitor-exit v4

    .line 4322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4323
    :try_start_178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_187
    .catchall {:try_start_178 .. :try_end_187} :catchall_1a4

    monitor-exit v4

    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4205
    return-void

    .line 4319
    :catchall_1a1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4322
    :catchall_1a4
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4319
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catchall_1a7
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4322
    :catchall_1aa
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4242
    :cond_1ad
    :try_start_1ad
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4244
    .local v22, "headerbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "ANDROID BACKUP\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4245
    const/4 v3, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4246
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    if-eqz v3, :cond_2e7

    const-string/jumbo v3, "\n1\n"

    :goto_1cd
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d2
    .catch Landroid/os/RemoteException; {:try_start_1ad .. :try_end_1d2} :catch_292
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1d2} :catch_35c
    .catchall {:try_start_1ad .. :try_end_1d2} :catchall_41f

    .line 4250
    if-eqz v18, :cond_2ec

    .line 4251
    :try_start_1d4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1dd} :catch_2f8
    .catch Landroid/os/RemoteException; {:try_start_1d4 .. :try_end_1dd} :catch_292
    .catchall {:try_start_1d4 .. :try_end_1dd} :catchall_41f

    move-result-object v19

    move-object/from16 v20, v19

    .line 4256
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .local v20, "finalOutput":Ljava/io/OutputStream;
    :goto_1e0
    :try_start_1e0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    .line 4257
    .local v21, "header":[B
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4260
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    if-eqz v3, :cond_48a

    .line 4261
    new-instance v13, Ljava/util/zip/Deflater;

    const/16 v3, 0x9

    invoke-direct {v13, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 4262
    .local v13, "deflater":Ljava/util/zip/Deflater;
    new-instance v19, Ljava/util/zip/DeflaterOutputStream;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_209} :catch_47f
    .catch Landroid/os/RemoteException; {:try_start_1e0 .. :try_end_209} :catch_292
    .catchall {:try_start_1e0 .. :try_end_209} :catchall_41f

    .line 4265
    .end local v13    # "deflater":Ljava/util/zip/Deflater;
    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :goto_209
    move-object/from16 v5, v19

    .line 4273
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_20b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_20f
    .catch Landroid/os/RemoteException; {:try_start_20b .. :try_end_20f} :catch_292
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_20f} :catch_35c
    .catchall {:try_start_20b .. :try_end_20f} :catchall_41f

    if-eqz v3, :cond_224

    .line 4275
    :try_start_211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.android.sharedstoragebackup"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 4276
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_224
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_211 .. :try_end_224} :catch_350
    .catch Landroid/os/RemoteException; {:try_start_211 .. :try_end_224} :catch_292
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_224} :catch_35c
    .catchall {:try_start_211 .. :try_end_224} :catchall_41f

    .line 4283
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_224
    :goto_224
    :try_start_224
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4284
    .local v10, "N":I
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_22a
    move/from16 v0, v23

    if-ge v0, v10, :cond_3bc

    .line 4285
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v7, v0

    .line 4287
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.android.sharedstoragebackup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 4289
    .local v24, "isSharedStorage":Z
    new-instance v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    const/4 v6, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    .line 4290
    if-eqz v24, :cond_3b4

    const-string/jumbo v3, "Shared storage"

    :goto_25a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 4293
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 4294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage()I

    .line 4298
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    if-eqz v3, :cond_3b8

    .line 4299
    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v27

    .line 4300
    .local v27, "obbOkay":Z
    if-nez v27, :cond_3b8

    .line 4301
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failure writing OBB stack for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_292
    .catch Landroid/os/RemoteException; {:try_start_224 .. :try_end_292} :catch_292
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_292} :catch_35c
    .catchall {:try_start_224 .. :try_end_292} :catchall_41f

    .line 4308
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "N":I
    .end local v18    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v21    # "header":[B
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v23    # "i":I
    .end local v24    # "isSharedStorage":Z
    .end local v27    # "obbOkay":Z
    :catch_292
    move-exception v15

    .line 4309
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_293
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "App died during full backup"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29c
    .catchall {:try_start_293 .. :try_end_29c} :catchall_41f

    .line 4314
    if-eqz v5, :cond_2a1

    :try_start_29e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4315
    :cond_2a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a8
    .catch Ljava/io/IOException; {:try_start_29e .. :try_end_2a8} :catch_473

    .line 4319
    :goto_2a8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4320
    :try_start_2af
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_2b8
    .catchall {:try_start_2af .. :try_end_2b8} :catchall_419

    monitor-exit v4

    .line 4322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4323
    :try_start_2be
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_2cd
    .catchall {:try_start_2be .. :try_end_2cd} :catchall_41c

    monitor-exit v4

    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4128
    .end local v15    # "e":Landroid/os/RemoteException;
    :goto_2e6
    return-void

    .line 4246
    .local v5, "out":Ljava/io/OutputStream;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v18    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_2e7
    :try_start_2e7
    const-string/jumbo v3, "\n0\n"
    :try_end_2ea
    .catch Landroid/os/RemoteException; {:try_start_2e7 .. :try_end_2ea} :catch_292
    .catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_2ea} :catch_35c
    .catchall {:try_start_2e7 .. :try_end_2ea} :catchall_41f

    goto/16 :goto_1cd

    .line 4253
    :cond_2ec
    :try_start_2ec
    const-string/jumbo v3, "none\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2ec .. :try_end_2f4} :catch_2f8
    .catch Landroid/os/RemoteException; {:try_start_2ec .. :try_end_2f4} :catch_292
    .catchall {:try_start_2ec .. :try_end_2f4} :catchall_41f

    move-object/from16 v20, v19

    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_1e0

    .line 4266
    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_2f8
    move-exception v17

    .line 4268
    .local v17, "e":Ljava/lang/Exception;
    :goto_2f9
    :try_start_2f9
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Unable to emit archive header"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_304
    .catch Landroid/os/RemoteException; {:try_start_2f9 .. :try_end_304} :catch_292
    .catch Ljava/lang/Exception; {:try_start_2f9 .. :try_end_304} :catch_35c
    .catchall {:try_start_2f9 .. :try_end_304} :catchall_41f

    .line 4315
    :try_start_304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30b
    .catch Ljava/io/IOException; {:try_start_304 .. :try_end_30b} :catch_47c

    .line 4319
    :goto_30b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4320
    :try_start_312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_31b
    .catchall {:try_start_312 .. :try_end_31b} :catchall_34a

    monitor-exit v4

    .line 4322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4323
    :try_start_321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_330
    .catchall {:try_start_321 .. :try_end_330} :catchall_34d

    monitor-exit v4

    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4269
    return-void

    .line 4319
    :catchall_34a
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4322
    :catchall_34d
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4277
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v17    # "e":Ljava/lang/Exception;
    .local v5, "out":Ljava/io/OutputStream;
    .restart local v21    # "header":[B
    :catch_350
    move-exception v14

    .line 4278
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_351
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Unable to find shared-storage backup handler"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35a
    .catch Landroid/os/RemoteException; {:try_start_351 .. :try_end_35a} :catch_292
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_35a} :catch_35c
    .catchall {:try_start_351 .. :try_end_35a} :catchall_41f

    goto/16 :goto_224

    .line 4310
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v21    # "header":[B
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_35c
    move-exception v17

    .line 4311
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_35d
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Internal exception during full backup"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_368
    .catchall {:try_start_35d .. :try_end_368} :catchall_41f

    .line 4314
    if-eqz v5, :cond_36d

    :try_start_36a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4315
    :cond_36d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_374
    .catch Ljava/io/IOException; {:try_start_36a .. :try_end_374} :catch_476

    .line 4319
    :goto_374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4320
    :try_start_37b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_384
    .catchall {:try_start_37b .. :try_end_384} :catchall_413

    monitor-exit v4

    .line 4322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4323
    :try_start_38a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_399
    .catchall {:try_start_38a .. :try_end_399} :catchall_416

    monitor-exit v4

    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2e6

    .line 4290
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "N":I
    .restart local v18    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v21    # "header":[B
    .restart local v22    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v23    # "i":I
    .restart local v24    # "isSharedStorage":Z
    :cond_3b4
    :try_start_3b4
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_25a

    .line 4284
    :cond_3b8
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_22a

    .line 4307
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v24    # "isSharedStorage":Z
    :cond_3bc
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_3c1
    .catch Landroid/os/RemoteException; {:try_start_3b4 .. :try_end_3c1} :catch_292
    .catch Ljava/lang/Exception; {:try_start_3b4 .. :try_end_3c1} :catch_35c
    .catchall {:try_start_3b4 .. :try_end_3c1} :catchall_41f

    .line 4314
    if-eqz v5, :cond_3c6

    :try_start_3c3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4315
    :cond_3c6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3cd
    .catch Ljava/io/IOException; {:try_start_3c3 .. :try_end_3cd} :catch_479

    .line 4319
    :goto_3cd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4320
    :try_start_3d4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_3dd
    .catchall {:try_start_3d4 .. :try_end_3dd} :catchall_40d

    monitor-exit v4

    .line 4322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4323
    :try_start_3e3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_3f2
    .catchall {:try_start_3e3 .. :try_end_3f2} :catchall_410

    monitor-exit v4

    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2e6

    .line 4319
    :catchall_40d
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4322
    :catchall_410
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4319
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v10    # "N":I
    .end local v18    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v21    # "header":[B
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v23    # "i":I
    .restart local v17    # "e":Ljava/lang/Exception;
    :catchall_413
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4322
    :catchall_416
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4319
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v15    # "e":Landroid/os/RemoteException;
    :catchall_419
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4322
    :catchall_41c
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4312
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_41f
    move-exception v3

    .line 4314
    if-eqz v5, :cond_425

    :try_start_422
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4315
    :cond_425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_42c
    .catch Ljava/io/IOException; {:try_start_422 .. :try_end_42c} :catch_471

    .line 4319
    :goto_42c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4320
    :try_start_433
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V
    :try_end_43c
    .catchall {:try_start_433 .. :try_end_43c} :catchall_46b

    monitor-exit v4

    .line 4322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4323
    :try_start_442
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_451
    .catchall {:try_start_442 .. :try_end_451} :catchall_46e

    monitor-exit v4

    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4328
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4312
    throw v3

    .line 4319
    :catchall_46b
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4322
    :catchall_46e
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4316
    :catch_471
    move-exception v16

    .local v16, "e":Ljava/io/IOException;
    goto :goto_42c

    .end local v16    # "e":Ljava/io/IOException;
    .restart local v15    # "e":Landroid/os/RemoteException;
    :catch_473
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_2a8

    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v17    # "e":Ljava/lang/Exception;
    :catch_476
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_374

    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v10    # "N":I
    .restart local v18    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v21    # "header":[B
    .restart local v22    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v23    # "i":I
    :catch_479
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_3cd

    .end local v10    # "N":I
    .end local v16    # "e":Ljava/io/IOException;
    .end local v21    # "header":[B
    .end local v23    # "i":I
    .local v5, "out":Ljava/io/OutputStream;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v17    # "e":Ljava/lang/Exception;
    :catch_47c
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_30b

    .line 4266
    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "finalOutput":Ljava/io/OutputStream;
    :catch_47f
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_2f9

    .line 4316
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_484
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_110

    .end local v16    # "e":Ljava/io/IOException;
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_487
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_162

    .end local v16    # "e":Ljava/io/IOException;
    .restart local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v21    # "header":[B
    .restart local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_48a
    move-object/from16 v19, v20

    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_209
.end method

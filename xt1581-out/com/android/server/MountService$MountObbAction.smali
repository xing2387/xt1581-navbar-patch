.class Lcom/android/server/MountService$MountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 3454
    iput-object p1, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    .line 3455
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3456
    iput-object p3, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    .line 3457
    iput p4, p0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    .line 3454
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 3536
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3535
    return-void
.end method

.method public handleExecute()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-wrap17(Lcom/android/server/MountService;)V

    .line 3463
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-wrap18(Lcom/android/server/MountService;)V

    .line 3465
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v11

    .line 3467
    .local v11, "obbInfo":Landroid/content/res/ObbInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    iget-object v14, v11, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    invoke-static {v13, v14, v15}, Lcom/android/server/MountService;->-wrap2(Lcom/android/server/MountService;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_53

    .line 3468
    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Denied attempt to mount OBB "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3469
    const-string/jumbo v15, " which is owned by "

    .line 3468
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3469
    iget-object v15, v11, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    .line 3468
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    const/16 v13, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3471
    return-void

    .line 3475
    :cond_53
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v14

    monitor-enter v14

    .line 3476
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get10(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v15, v15, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v13, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_95

    move-result v8

    .local v8, "isMounted":Z
    monitor-exit v14

    .line 3478
    if-eqz v8, :cond_98

    .line 3479
    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    const/16 v13, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3481
    return-void

    .line 3475
    .end local v8    # "isMounted":Z
    :catchall_95
    move-exception v13

    monitor-exit v14

    throw v13

    .line 3485
    .restart local v8    # "isMounted":Z
    :cond_98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v13, :cond_107

    .line 3486
    const-string/jumbo v7, "none"

    .line 3507
    .local v7, "hashedKey":Ljava/lang/String;
    :goto_a1
    const/4 v12, 0x0

    .line 3509
    .local v12, "rc":I
    :try_start_a2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string/jumbo v14, "obb"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "mount"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aput-object v16, v15, v17

    new-instance v16, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 3510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/MountService$ObbState;->ownerGid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v15, v17

    .line 3509
    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_e9
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a2 .. :try_end_e9} :catch_15c

    .line 3518
    :cond_e9
    :goto_e9
    if-nez v12, :cond_16a

    .line 3522
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v14

    monitor-enter v14

    .line 3523
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-static {v13, v15}, Lcom/android/server/MountService;->-wrap4(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_ff
    .catchall {:try_start_f4 .. :try_end_ff} :catchall_167

    monitor-exit v14

    .line 3526
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3461
    :goto_106
    return-void

    .line 3489
    .end local v7    # "hashedKey":Ljava/lang/String;
    .end local v12    # "rc":I
    :cond_107
    :try_start_107
    const-string/jumbo v13, "PBKDF2WithHmacSHA1"

    invoke-static {v13}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 3491
    .local v6, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v10, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    iget-object v14, v11, Landroid/content/res/ObbInfo;->salt:[B

    .line 3492
    const/16 v15, 0x400

    const/16 v16, 0x80

    .line 3491
    move/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3493
    .local v10, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v6, v10}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 3494
    .local v9, "key":Ljavax/crypto/SecretKey;
    new-instance v1, Ljava/math/BigInteger;

    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/math/BigInteger;-><init>([B)V

    .line 3495
    .local v1, "bi":Ljava/math/BigInteger;
    const/16 v13, 0x10

    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_135
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_107 .. :try_end_135} :catch_14a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_107 .. :try_end_135} :catch_138

    move-result-object v7

    .restart local v7    # "hashedKey":Ljava/lang/String;
    goto/16 :goto_a1

    .line 3500
    .end local v1    # "bi":Ljava/math/BigInteger;
    .end local v6    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "hashedKey":Ljava/lang/String;
    .end local v9    # "key":Ljavax/crypto/SecretKey;
    .end local v10    # "ks":Ljava/security/spec/KeySpec;
    :catch_138
    move-exception v5

    .line 3501
    .local v5, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v13, "MountService"

    const-string/jumbo v14, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3502
    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3503
    return-void

    .line 3496
    .end local v5    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_14a
    move-exception v4

    .line 3497
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v13, "MountService"

    const-string/jumbo v14, "Could not load PBKDF2 algorithm"

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3498
    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3499
    return-void

    .line 3511
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v7    # "hashedKey":Ljava/lang/String;
    .restart local v12    # "rc":I
    :catch_15c
    move-exception v3

    .line 3512
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    .line 3513
    .local v2, "code":I
    const/16 v13, 0x195

    if-eq v2, v13, :cond_e9

    .line 3514
    const/4 v12, -0x1

    goto :goto_e9

    .line 3522
    .end local v2    # "code":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_167
    move-exception v13

    monitor-exit v14

    throw v13

    .line 3528
    :cond_16a
    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Couldn\'t mount OBB file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    const/16 v13, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_106
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3542
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3543
    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3544
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

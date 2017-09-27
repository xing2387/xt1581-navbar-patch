.class Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
    }
.end annotation


# static fields
.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"


# instance fields
.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "wakeLockTag"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 68
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 70
    const-string/jumbo v1, "power"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .registers 3
    .param p1, "from"    # Lcom/android/server/pm/PackageDexOptimizer;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 76
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 77
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 78
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 74
    return-void
.end method

.method static canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 292
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    move-result v3

    if-nez v3, :cond_8

    .line 293
    return-object v5

    .line 295
    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 297
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 299
    .local v2, "oatDir":Ljava/io/File;
    :try_start_19
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_19 .. :try_end_22} :catch_27

    .line 304
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 300
    :catch_27
    move-exception v1

    .line 301
    .local v1, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v3, "PackageManager.DexOptimizer"

    const-string/jumbo v4, "Failed to create oat dir"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    return-object v5

    .line 306
    .end local v1    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v2    # "oatDir":Ljava/io/File;
    :cond_32
    return-object v5
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p0, "codePath"    # Ljava/io/File;

    .prologue
    .line 310
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z
    .registers 12
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v10, 0x0

    .line 324
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 326
    return v10

    .line 329
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apkPath$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    .local v0, "apkPath":Ljava/lang/String;
    :try_start_1c
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->realpath(Ljava/io/File;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_4c

    move-result-object v0

    .line 337
    const/16 v8, 0x2f

    const/16 v9, 0x40

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, "useMarker":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 339
    .local v2, "currentUserIds":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_36
    array-length v8, v2

    if-ge v5, v8, :cond_10

    .line 341
    aget v8, v2, v5

    invoke-static {v8}, Landroid/os/Environment;->getDataProfilesDeForeignDexDirectory(I)Ljava/io/File;

    move-result-object v6

    .line 342
    .local v6, "profileDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v4, "foreignUseMark":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_57

    .line 344
    const/4 v8, 0x1

    return v8

    .line 332
    .end local v2    # "currentUserIds":[I
    .end local v4    # "foreignUseMark":Ljava/io/File;
    .end local v5    # "i":I
    .end local v6    # "profileDir":Ljava/io/File;
    .end local v7    # "useMarker":Ljava/lang/String;
    :catch_4c
    move-exception v3

    .line 334
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v8, "PackageManager.DexOptimizer"

    const-string/jumbo v9, "Failed to get canonical path"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 339
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "currentUserIds":[I
    .restart local v4    # "foreignUseMark":Ljava/io/File;
    .restart local v5    # "i":I
    .restart local v6    # "profileDir":Ljava/io/File;
    .restart local v7    # "useMarker":Ljava/lang/String;
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 348
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v2    # "currentUserIds":[I
    .end local v4    # "foreignUseMark":Ljava/io/File;
    .end local v5    # "i":I
    .end local v6    # "profileDir":Ljava/io/File;
    .end local v7    # "useMarker":Ljava/lang/String;
    :cond_5a
    return v10
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)I
    .registers 38
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "targetInstructionSets"    # [Ljava/lang/String;
    .param p4, "checkProfiles"    # Z
    .param p5, "targetCompilerFilter"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p3, :cond_c

    .line 155
    move-object/from16 v17, p3

    .line 157
    .local v17, "instructionSets":[Ljava/lang/String;
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 158
    const/4 v2, 0x0

    return v2

    .line 155
    .end local v17    # "instructionSets":[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "instructionSets":[Ljava/lang/String;
    goto :goto_4

    .line 161
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v24

    .line 162
    .local v24, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v4

    .line 164
    .local v4, "sharedGid":I
    invoke-static/range {p5 .. p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v19

    .line 167
    .local v19, "isProfileGuidedFilter":Z
    if-eqz v19, :cond_45

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 168
    const/16 p4, 0x0

    .line 170
    .local p4, "checkProfiles":Z
    invoke-static/range {p5 .. p5}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getNonProfileGuidedCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 171
    invoke-static/range {p5 .. p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 172
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_43
    const/16 v19, 0x0

    .line 178
    .end local v19    # "isProfileGuidedFilter":Z
    .end local p4    # "checkProfiles":Z
    :cond_45
    const/16 v22, 0x0

    .line 179
    .local v22, "newProfile":Z
    if-eqz p4, :cond_57

    if-eqz v19, :cond_57

    .line 182
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;)Z
    :try_end_56
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_4b .. :try_end_56} :catch_c0

    move-result v22

    .line 188
    .end local v22    # "newProfile":Z
    :cond_57
    :goto_57
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_cd

    const/16 v29, 0x1

    .line 189
    .local v29, "vmSafeMode":Z
    :goto_63
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d0

    const/4 v13, 0x1

    .line 191
    .local v13, "debuggable":Z
    :goto_6e
    const/16 v25, 0x0

    .line 192
    .local v25, "performedDexOpt":Z
    const/16 v28, 0x1

    .line 194
    .local v28, "successfulDexOpt":Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 195
    .local v14, "dexCodeInstructionSets":[Ljava/lang/String;
    const/4 v2, 0x0

    array-length v0, v14

    move/from16 v31, v0

    move/from16 v30, v2

    :goto_7c
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_20e

    aget-object v6, v14, v30

    .line 196
    .local v6, "dexCodeInstructionSet":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "path$iterator":Ljava/util/Iterator;
    :goto_88
    :pswitch_88
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_208

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 199
    .local v3, "path":Ljava/lang/String;
    :try_start_94
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-static {v3, v6, v0, v1}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9b} :catch_d2

    move-result v7

    .line 205
    .local v7, "dexoptNeeded":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v7

    .line 212
    const/4 v8, 0x0

    .line 213
    .local v8, "oatDir":Ljava/lang/String;
    packed-switch v7, :pswitch_data_218

    .line 227
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid dexopt:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    .end local v3    # "path":Ljava/lang/String;
    .end local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v7    # "dexoptNeeded":I
    .end local v8    # "oatDir":Ljava/lang/String;
    .end local v13    # "debuggable":Z
    .end local v14    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v23    # "path$iterator":Ljava/util/Iterator;
    .end local v25    # "performedDexOpt":Z
    .end local v28    # "successfulDexOpt":Z
    .end local v29    # "vmSafeMode":Z
    .restart local v22    # "newProfile":Z
    :catch_c0
    move-exception v16

    .line 184
    .local v16, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    const-string/jumbo v5, "Failed to merge profiles"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 188
    .end local v16    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v22    # "newProfile":Z
    :cond_cd
    const/16 v29, 0x0

    .restart local v29    # "vmSafeMode":Z
    goto :goto_63

    .line 189
    :cond_d0
    const/4 v13, 0x0

    .restart local v13    # "debuggable":Z
    goto :goto_6e

    .line 201
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v14    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v23    # "path$iterator":Ljava/util/Iterator;
    .restart local v25    # "performedDexOpt":Z
    .restart local v28    # "successfulDexOpt":Z
    :catch_d2
    move-exception v18

    .line 202
    .local v18, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException reading apk: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    const/4 v2, -0x1

    return v2

    .line 217
    .end local v18    # "ioe":Ljava/io/IOException;
    .restart local v7    # "dexoptNeeded":I
    .restart local v8    # "oatDir":Ljava/lang/String;
    :pswitch_f1
    const-string/jumbo v15, "dex2oat"

    .line 218
    .local v15, "dexoptType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 230
    .end local v8    # "oatDir":Ljava/lang/String;
    :goto_fc
    const/4 v12, 0x0

    .line 231
    .local v12, "sharedLibrariesPath":Ljava/lang/String;
    if-eqz p2, :cond_135

    move-object/from16 v0, p2

    array-length v2, v0

    if-eqz v2, :cond_135

    .line 232
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v27, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    :goto_10d
    if-ge v2, v5, :cond_131

    aget-object v21, p2, v2

    .line 234
    .local v21, "lib":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_11f

    .line 235
    const-string/jumbo v10, ":"

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_11f
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_10d

    .line 221
    .end local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .end local v15    # "dexoptType":Ljava/lang/String;
    .end local v21    # "lib":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "oatDir":Ljava/lang/String;
    :pswitch_129
    const-string/jumbo v15, "patchoat"

    .restart local v15    # "dexoptType":Ljava/lang/String;
    goto :goto_fc

    .line 224
    .end local v15    # "dexoptType":Ljava/lang/String;
    :pswitch_12d
    const-string/jumbo v15, "self patchoat"

    .restart local v15    # "dexoptType":Ljava/lang/String;
    goto :goto_fc

    .line 239
    .end local v8    # "oatDir":Ljava/lang/String;
    .restart local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_131
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 241
    .end local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_135
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Running dexopt ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ") on: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " pkg="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 242
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 242
    const-string/jumbo v10, " isa="

    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 243
    const-string/jumbo v10, " vmSafeMode="

    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 243
    const-string/jumbo v10, " debuggable="

    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 244
    const-string/jumbo v10, " target-filter="

    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 244
    const-string/jumbo v10, " oatDir = "

    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 245
    const-string/jumbo v10, " sharedLibraries="

    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v2

    if-nez v2, :cond_1b9

    if-eqz v19, :cond_1eb

    :cond_1b9
    const/16 v20, 0x0

    .line 248
    .local v20, "isPublic":Z
    :goto_1bb
    if-eqz v19, :cond_1ee

    const/16 v26, 0x20

    .line 250
    .local v26, "profileFlag":I
    :goto_1bf
    if-eqz v20, :cond_1f1

    const/4 v2, 0x2

    move v5, v2

    .line 251
    :goto_1c3
    if-eqz v29, :cond_1f4

    const/4 v2, 0x4

    .line 250
    :goto_1c6
    or-int/2addr v5, v2

    .line 252
    if-eqz v13, :cond_1f6

    const/16 v2, 0x8

    .line 250
    :goto_1cb
    or-int/2addr v2, v5

    or-int v2, v2, v26

    or-int/lit8 v2, v2, 0x10

    .line 249
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v9

    .line 257
    .local v9, "dexFlags":I
    :try_start_1d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 258
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    move-object/from16 v10, p5

    .line 257
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e7
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_1d6 .. :try_end_1e7} :catch_1f8

    .line 260
    const/16 v25, 0x1

    goto/16 :goto_88

    .line 247
    .end local v9    # "dexFlags":I
    .end local v20    # "isPublic":Z
    .end local v26    # "profileFlag":I
    :cond_1eb
    const/16 v20, 0x1

    .restart local v20    # "isPublic":Z
    goto :goto_1bb

    .line 248
    :cond_1ee
    const/16 v26, 0x0

    .restart local v26    # "profileFlag":I
    goto :goto_1bf

    .line 250
    :cond_1f1
    const/4 v2, 0x0

    move v5, v2

    goto :goto_1c3

    .line 251
    :cond_1f4
    const/4 v2, 0x0

    goto :goto_1c6

    .line 252
    :cond_1f6
    const/4 v2, 0x0

    goto :goto_1cb

    .line 261
    .restart local v9    # "dexFlags":I
    :catch_1f8
    move-exception v16

    .line 262
    .restart local v16    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    const-string/jumbo v5, "Failed to dexopt"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    const/16 v28, 0x0

    goto/16 :goto_88

    .line 195
    .end local v3    # "path":Ljava/lang/String;
    .end local v7    # "dexoptNeeded":I
    .end local v9    # "dexFlags":I
    .end local v15    # "dexoptType":Ljava/lang/String;
    .end local v16    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v20    # "isPublic":Z
    .end local v26    # "profileFlag":I
    :cond_208
    add-int/lit8 v2, v30, 0x1

    move/from16 v30, v2

    goto/16 :goto_7c

    .line 268
    .end local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v23    # "path$iterator":Ljava/util/Iterator;
    :cond_20e
    if-eqz v28, :cond_216

    .line 273
    if-eqz v25, :cond_214

    const/4 v2, 0x1

    :goto_213
    return v2

    :cond_214
    const/4 v2, 0x0

    goto :goto_213

    .line 275
    :cond_216
    const/4 v2, -0x1

    return v2

    .line 213
    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_88
        :pswitch_f1
        :pswitch_129
        :pswitch_12d
    .end packed-switch
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .registers 2
    .param p1, "dexoptFlags"    # I

    .prologue
    .line 123
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .registers 2
    .param p1, "dexoptNeeded"    # I

    .prologue
    .line 116
    return p1
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .registers 15
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 130
    iget-object v8, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v8}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "instructionSets":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v6

    .line 135
    .local v6, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    array-length v9, v0

    :goto_10
    if-ge v8, v9, :cond_93

    aget-object v1, v0, v8

    .line 136
    .local v1, "instructionSet":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Instruction Set: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 138
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "path$iterator":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 139
    .local v4, "path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 141
    .local v7, "status":Ljava/lang/String;
    :try_start_3f
    invoke-static {v4, v1}, Ldalvik/system/DexFile;->getDexFileStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_72

    move-result-object v7

    .line 145
    .local v7, "status":Ljava/lang/String;
    :goto_43
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 146
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    .line 142
    .local v7, "status":Ljava/lang/String;
    :catch_72
    move-exception v3

    .line 143
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[Exception]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "status":Ljava/lang/String;
    goto :goto_43

    .line 148
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "status":Ljava/lang/String;
    :cond_8c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 135
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_10

    .line 129
    .end local v1    # "instructionSet":Ljava/lang/String;
    .end local v5    # "path$iterator":Ljava/util/Iterator;
    :cond_93
    return-void
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)I
    .registers 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "checkProfiles"    # Z
    .param p5, "targetCompilationFilter"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 96
    .local v0, "useLock":Z
    if-eqz v0, :cond_1a

    .line 97
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 98
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_30

    .line 101
    :cond_1a
    :try_start_1a
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_27

    move-result v1

    .line 104
    if-eqz v0, :cond_25

    .line 105
    :try_start_20
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_30

    :cond_25
    monitor-exit v2

    .line 101
    return v1

    .line 103
    :catchall_27
    move-exception v1

    .line 104
    if-eqz v0, :cond_2f

    .line 105
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 103
    :cond_2f
    throw v1
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    .line 94
    .end local v0    # "useLock":Z
    :catchall_30
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method systemReady()V
    .registers 2

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 313
    return-void
.end method

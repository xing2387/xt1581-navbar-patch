.class public Lcom/android/server/updates/SELinuxPolicyInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "SELinuxPolicyInstallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SELinuxPolicyInstallReceiver"

.field private static final fileContextsPath:Ljava/lang/String; = "file_contexts.bin"

.field private static final macPermissionsPath:Ljava/lang/String; = "mac_permissions.xml"

.field private static final propertyContextsPath:Ljava/lang/String; = "property_contexts"

.field private static final seappContextsPath:Ljava/lang/String; = "seapp_contexts"

.field private static final sepolicyPath:Ljava/lang/String; = "sepolicy"

.field private static final serviceContextsPath:Ljava/lang/String; = "service_contexts"

.field private static final versionPath:Ljava/lang/String; = "selinux_version"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 51
    const-string/jumbo v0, "/data/security/bundle"

    const-string/jumbo v1, "sepolicy_bundle"

    const-string/jumbo v2, "metadata/"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private applyUpdate()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 108
    const-string/jumbo v4, "SELinuxPolicyInstallReceiver"

    const-string/jumbo v5, "Applying SELinux policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "backup"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v0, "backup":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "current"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v1, "current":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "tmp"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v3, "tmp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 113
    invoke-direct {p0, v0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->deleteRecursive(Ljava/io/File;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_47
    :try_start_47
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v4, "selinux.reload_policy"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/system/ErrnoException; {:try_start_47 .. :try_end_5b} :catch_5c

    .line 107
    :cond_5b
    :goto_5b
    return-void

    .line 119
    :catch_5c
    move-exception v2

    .line 120
    .local v2, "e":Landroid/system/ErrnoException;
    const-string/jumbo v4, "SELinuxPolicyInstallReceiver"

    const-string/jumbo v5, "Could not update selinux policy: "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .registers 6
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_c
    if-ge v1, v3, :cond_16

    aget-object v0, v2, v1

    .line 84
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->deleteRecursive(Ljava/io/File;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 85
    .end local v0    # "child":Ljava/io/File;
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 81
    return-void
.end method

.method private installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V
    .registers 7
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "stream"    # Ljava/io/BufferedInputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    new-array v0, p3, [B

    .line 77
    .local v0, "chunk":[B
    invoke-virtual {p2, v0, v2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 78
    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 75
    return-void
.end method

.method private readChunkLengths(Ljava/io/BufferedInputStream;)[I
    .registers 5
    .param p1, "bundle"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 64
    .local v0, "chunks":[I
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 71
    return-object v0
.end method

.method private readInt(Ljava/io/BufferedInputStream;)I
    .registers 6
    .param p1, "reader"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_10

    .line 57
    shl-int/lit8 v2, v1, 0x8

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    or-int v1, v2, v3

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 59
    :cond_10
    return v1
.end method

.method private unpackBundle()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateContent:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    .local v1, "stream":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "tmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v2, "tmp":Ljava/io/File;
    :try_start_1a
    invoke-direct {p0, v1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readChunkLengths(Ljava/io/BufferedInputStream;)[I

    move-result-object v0

    .line 93
    .local v0, "chunkLengths":[I
    invoke-direct {p0, v2}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->deleteRecursive(Ljava/io/File;)V

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 95
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "selinux_version"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 96
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "mac_permissions.xml"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 97
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "seapp_contexts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 98
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "property_contexts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 99
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "file_contexts.bin"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x4

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 100
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "sepolicy"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x5

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 101
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "service_contexts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x6

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V
    :try_end_86
    .catchall {:try_start_1a .. :try_end_86} :catchall_8a

    .line 103
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 88
    return-void

    .line 102
    .end local v0    # "chunkLengths":[I
    :catchall_8a
    move-exception v3

    .line 103
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 102
    throw v3
.end method


# virtual methods
.method protected getMessageDigestInstance()Ljava/security/MessageDigest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 144
    const-string/jumbo v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->unpackBundle()V

    .line 131
    invoke-direct {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->applyUpdate()V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_12
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_7

    .line 128
    :goto_6
    return-void

    .line 136
    :catch_7
    move-exception v0

    .line 137
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v3, "SELinuxPolicyInstallReceiver"

    const-string/jumbo v4, "Could not update selinux policy: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 134
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_12
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "SELinuxPolicyInstallReceiver"

    const-string/jumbo v4, "Could not update selinux policy: "

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1d
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "SELinuxPolicyInstallReceiver"

    const-string/jumbo v4, "SELinux policy update malformed: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

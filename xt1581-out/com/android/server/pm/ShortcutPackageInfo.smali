.class Lcom/android/server/pm/ShortcutPackageInfo;
.super Ljava/lang/Object;
.source "ShortcutPackageInfo.java"


# static fields
.field private static final ATTR_SHADOW:Ljava/lang/String; = "shadow"

.field private static final ATTR_SIGNATURE_HASH:Ljava/lang/String; = "hash"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field static final TAG_ROOT:Ljava/lang/String; = "package-info"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final VERSION_UNKNOWN:I = -0x1


# instance fields
.field private mIsShadow:Z

.field private mSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mVersionCode:I


# direct methods
.method private constructor <init>(ILjava/util/ArrayList;Z)V
    .registers 5
    .param p1, "versionCode"    # I
    .param p3, "isShadow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<[B>;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "sigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    .line 59
    iput p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    .line 60
    iput-boolean p3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 61
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public static generateForInstalledPackage(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackageInfo;
    .registers 9
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 110
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_f

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-nez v2, :cond_2a

    .line 111
    :cond_f
    const-string/jumbo v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t get signatures: package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v5

    .line 114
    :cond_2a
    new-instance v1, Lcom/android/server/pm/ShortcutPackageInfo;

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 115
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v3

    .line 114
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(ILjava/util/ArrayList;Z)V

    .line 117
    .local v1, "ret":Lcom/android/server/pm/ShortcutPackageInfo;
    return-object v1
.end method

.method public static newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/android/server/pm/ShortcutPackageInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(ILjava/util/ArrayList;Z)V

    return-object v0
.end method


# virtual methods
.method public canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;)Z
    .registers 9
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "target"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 91
    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "Can\'t restore: package no longer allows backup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v4

    .line 94
    :cond_12
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    if-ge v0, v1, :cond_39

    .line 95
    const-string/jumbo v0, "ShortcutService"

    .line 96
    const-string/jumbo v1, "Can\'t restore: package current version %d < backed up version %d"

    .line 95
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 97
    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 95
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v4

    .line 100
    :cond_39
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 101
    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "Can\'t restore: Package signature mismatch"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v4

    .line 104
    :cond_4b
    return v5
.end method

.method public dump(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 195
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v1, "PackageInfo:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v1, "  IsShadow: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 201
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 203
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v1, "  Version: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    iget v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 206
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 209
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v1, "    "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "SigHash: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println([C)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 192
    :cond_58
    return-void
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    return v0
.end method

.method public hasSignatures()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isShadow()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    return v0
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 155
    const-string/jumbo v8, "version"

    invoke-static {p1, v8}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 159
    .local v7, "versionCode":I
    if-nez p2, :cond_54

    const-string/jumbo v8, "shadow"

    invoke-static {p1, v8}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 161
    :goto_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 165
    .local v3, "outerDepth":I
    :cond_19
    :goto_19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_5a

    .line 166
    const/4 v8, 0x3

    if-ne v6, v8, :cond_29

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_5a

    .line 167
    :cond_29
    const/4 v8, 0x2

    if-ne v6, v8, :cond_19

    .line 170
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 171
    .local v0, "depth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "tag":Ljava/lang/String;
    add-int/lit8 v8, v3, 0x1

    if-ne v0, v8, :cond_56

    .line 174
    const-string/jumbo v8, "signature"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 177
    const-string/jumbo v8, "hash"

    .line 176
    invoke-static {p1, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "hash":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 159
    .end local v0    # "depth":I
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "outerDepth":I
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_54
    const/4 v4, 0x1

    .local v4, "shadow":Z
    goto :goto_10

    .line 183
    .end local v4    # "shadow":Z
    .restart local v0    # "depth":I
    .restart local v2    # "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v3    # "outerDepth":I
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_56
    invoke-static {v0, v5}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    goto :goto_19

    .line 187
    .end local v0    # "depth":I
    .end local v5    # "tag":Ljava/lang/String;
    :cond_5a
    iput v7, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    .line 188
    iput-boolean v4, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 189
    iput-object v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 153
    return-void
.end method

.method public refresh(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 7
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pkg"    # Lcom/android/server/pm/ShortcutPackageItem;

    .prologue
    .line 121
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    if-eqz v1, :cond_2f

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempted to refresh package info for shadow package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    const-string/jumbo v2, ", user="

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v2

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 124
    return-void

    .line 128
    :cond_2f
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v2

    .line 127
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 129
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_5c

    .line 130
    const-string/jumbo v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 133
    :cond_5c
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    .line 134
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 139
    const-string/jumbo v1, "package-info"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    const-string/jumbo v1, "version"

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    int-to-long v2, v2

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 142
    const-string/jumbo v1, "shadow"

    iget-boolean v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    invoke-static {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 145
    const-string/jumbo v1, "signature"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    const-string/jumbo v2, "hash"

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "signature"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 149
    :cond_42
    const-string/jumbo v1, "package-info"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    return-void
.end method

.method public setShadow(Z)V
    .registers 2
    .param p1, "shadow"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 72
    return-void
.end method

.method public setVersionCode(I)V
    .registers 2
    .param p1, "versionCode"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    .line 80
    return-void
.end method

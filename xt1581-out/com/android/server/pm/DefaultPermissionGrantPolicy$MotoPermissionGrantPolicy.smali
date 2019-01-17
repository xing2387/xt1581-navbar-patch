.class final Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoPermissionGrantPolicy"
.end annotation


# instance fields
.field private final mMotoOemPermPoliciesDir:Ljava/io/File;

.field private final mMotoPermPoliciesDir:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1155
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    .line 1156
    new-array v1, v6, [Ljava/lang/String;

    .line 1157
    const-string/jumbo v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "motorola"

    aput-object v2, v1, v4

    const-string/jumbo v2, "perms"

    aput-object v2, v1, v5

    .line 1156
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->mMotoPermPoliciesDir:Ljava/io/File;

    .line 1160
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v0

    .line 1159
    new-array v1, v6, [Ljava/lang/String;

    .line 1160
    const-string/jumbo v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "motorola"

    aput-object v2, v1, v4

    const-string/jumbo v2, "perms"

    aput-object v2, v1, v5

    .line 1159
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->mMotoOemPermPoliciesDir:Ljava/io/File;

    .line 1155
    return-void
.end method

.method private parseMotoPermissionGrantPolicyLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 1219
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    if-eq v3, v4, :cond_b

    .line 1220
    if-ne v3, v7, :cond_3

    .line 1224
    :cond_b
    if-eq v3, v4, :cond_16

    .line 1225
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v5, "No start tag found"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1227
    :cond_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "permissions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 1228
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected start tag : found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1229
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1229
    const-string/jumbo v6, ", expected \'permissions\'"

    .line 1228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1243
    .local v0, "name":Ljava/lang/String;
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    .local v2, "pkgName":Ljava/lang/String;
    :cond_48
    const-string/jumbo v4, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown/wrong package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1233
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_65
    :goto_65
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1234
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v7, :cond_6f

    .line 1217
    return-void

    .line 1238
    :cond_6f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1239
    .restart local v0    # "name":Ljava/lang/String;
    const-string/jumbo v4, "package"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 1240
    const-string/jumbo v4, "name"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1241
    .restart local v2    # "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-static {v4, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-wrap0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1242
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_48

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-wrap2(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1247
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_65

    .line 1249
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_95
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_65
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/PackageParser$Package;I)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 1257
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1259
    .local v2, "outerDepth":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1260
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_71

    .line 1261
    if-ne v4, v8, :cond_1a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_71

    .line 1262
    :cond_1a
    if-eq v4, v8, :cond_b

    const/4 v5, 0x4

    if-eq v4, v5, :cond_b

    .line 1266
    const-string/jumbo v5, "permission"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 1267
    const-string/jumbo v5, "name"

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1268
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-get1(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 1269
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1274
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1270
    :cond_4f
    const-string/jumbo v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown/wrong permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_b

    .line 1277
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "name":Ljava/lang/String;
    :cond_6d
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_b

    .line 1282
    :cond_71
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7c

    .line 1283
    iget-object v5, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-static {v5, p2, v3, p3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-wrap3(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1256
    :cond_7c
    return-void
.end method

.method private readMotoPermissionGrantPolicy(Ljava/io/File;I)V
    .registers 11
    .param p1, "permDir"    # Ljava/io/File;
    .param p2, "userId"    # I

    .prologue
    .line 1170
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1174
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_56

    .line 1175
    const-string/jumbo v2, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cannot be read"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void

    .line 1171
    :cond_34
    const-string/jumbo v2, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    return-void

    .line 1180
    :cond_56
    const/4 v1, 0x0

    .line 1181
    .local v1, "permFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_5d
    if-ge v2, v4, :cond_c9

    aget-object v0, v3, v2

    .line 1182
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9d

    .line 1184
    const-string/jumbo v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :goto_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 1187
    :cond_9d
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_c5

    .line 1188
    const-string/jumbo v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permissions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 1192
    :cond_c5
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->readMotoPermissionGrantPolicyfromXml(Ljava/io/File;I)V

    goto :goto_9a

    .line 1169
    .end local v0    # "f":Ljava/io/File;
    :cond_c9
    return-void
.end method

.method private readMotoPermissionGrantPolicyfromXml(Ljava/io/File;I)V
    .registers 10
    .param p1, "permFile"    # Ljava/io/File;
    .param p2, "userId"    # I

    .prologue
    .line 1197
    const/4 v3, 0x0

    .line 1199
    .local v3, "permReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    .end local v3    # "permReader":Ljava/io/FileReader;
    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_14

    .line 1206
    .local v3, "permReader":Ljava/io/FileReader;
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1207
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1208
    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->parseMotoPermissionGrantPolicyLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_10} :catch_30
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_30
    .catchall {:try_start_6 .. :try_end_10} :catchall_4f

    .line 1212
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1196
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_13
    return-void

    .line 1200
    .end local v3    # "permReader":Ljava/io/FileReader;
    :catch_14
    move-exception v0

    .line 1201
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not find or open permision policy file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return-void

    .line 1209
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "permReader":Ljava/io/FileReader;
    :catch_30
    move-exception v1

    .line 1210
    .local v1, "e":Ljava/lang/Exception;
    :try_start_31
    const-string/jumbo v4, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got exception while parsing permissions policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_4f

    .line 1212
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_13

    .line 1211
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4f
    move-exception v4

    .line 1212
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1211
    throw v4
.end method


# virtual methods
.method public grantPermissionsToMotoComponents(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->mMotoPermPoliciesDir:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->readMotoPermissionGrantPolicy(Ljava/io/File;I)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->mMotoOemPermPoliciesDir:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$MotoPermissionGrantPolicy;->readMotoPermissionGrantPolicy(Ljava/io/File;I)V

    .line 1164
    return-void
.end method

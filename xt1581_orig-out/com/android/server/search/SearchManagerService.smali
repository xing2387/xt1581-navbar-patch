.class public Lcom/android/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;,
        Lcom/android/server/search/SearchManagerService$Lifecycle;,
        Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSearchables:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSearchables"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/search/Searchables;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/search/SearchManagerService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/search/SearchManagerService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->onUnlockUser(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 99
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;-><init>(Lcom/android/server/search/SearchManagerService;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 101
    new-instance v0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;-><init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V

    .line 98
    return-void
.end method

.method private getLegacyAssistComponent(I)Landroid/content/ComponentName;
    .registers 15
    .param p1, "userHandle"    # I

    .prologue
    const/4 v12, 0x0

    .line 263
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "getLegacyAssistComponent"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p1

    .line 263
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 265
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 266
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.ASSIST"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v7, "assistIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 270
    const/high16 v1, 0x10000

    .line 268
    invoke-interface {v10, v7, v0, v1, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 271
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_5d

    .line 272
    new-instance v0, Landroid/content/ComponentName;

    .line 273
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 274
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 272
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_41} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_42

    return-object v0

    .line 279
    .end local v7    # "assistIntent":Landroid/content/Intent;
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    :catch_42
    move-exception v8

    .line 280
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "SearchManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in getLegacyAssistComponent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    return-object v12

    .line 276
    :catch_5e
    move-exception v11

    .line 278
    .local v11, "re":Landroid/os/RemoteException;
    const-string/jumbo v0, "SearchManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RemoteException in getLegacyAssistComponent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method

.method private getSearchables(I)Lcom/android/server/search/Searchables;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(IZ)Lcom/android/server/search/Searchables;

    move-result-object v0

    return-object v0
.end method

.method private getSearchables(IZ)Lcom/android/server/search/Searchables;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 111
    .local v2, "token":J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 112
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-nez v4, :cond_3a

    .line 113
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_35

    .line 118
    .end local v1    # "um":Landroid/os/UserManager;
    :catchall_35
    move-exception v4

    .line 119
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    throw v4

    .line 115
    .restart local v1    # "um":Landroid/os/UserManager;
    :cond_3a
    :try_start_3a
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_61

    .line 116
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isn\'t unlocked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_61
    .catchall {:try_start_3a .. :try_end_61} :catchall_35

    .line 119
    :cond_61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    iget-object v5, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v5

    .line 122
    :try_start_67
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/search/Searchables;

    .line 123
    .local v0, "searchables":Lcom/android/server/search/Searchables;
    if-nez v0, :cond_82

    .line 124
    new-instance v0, Lcom/android/server/search/Searchables;

    .end local v0    # "searchables":Lcom/android/server/search/Searchables;
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p1}, Lcom/android/server/search/Searchables;-><init>(Landroid/content/Context;I)V

    .line 125
    .restart local v0    # "searchables":Lcom/android/server/search/Searchables;
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    .line 126
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_80
    .catchall {:try_start_67 .. :try_end_80} :catchall_88

    :cond_80
    :goto_80
    monitor-exit v5

    .line 130
    return-object v0

    .line 127
    :cond_82
    if-eqz p2, :cond_80

    .line 128
    :try_start_84
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->updateSearchableList()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_80

    .line 121
    .end local v0    # "searchables":Lcom/android/server/search/Searchables;
    :catchall_88
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private onCleanupUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v1

    .line 140
    :try_start_3
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 138
    return-void

    .line 139
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onUnlockUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(IZ)Lcom/android/server/search/Searchables;

    .line 134
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.DUMP"

    const-string/jumbo v4, "SearchManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 310
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v3

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    :try_start_17
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_42

    .line 312
    const-string/jumbo v2, "\nUser: "

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 313
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 314
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/search/Searchables;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_44

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_42
    monitor-exit v3

    .line 306
    return-void

    .line 310
    :catchall_44
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivities()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 241
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 5
    .param p1, "launchActivity"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 216
    if-nez p1, :cond_d

    .line 217
    const-string/jumbo v0, "SearchManagerService"

    const-string/jumbo v1, "getSearchableInfo(), activity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-object v2

    .line 220
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/search/Searchables;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 249
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public launchAssist(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 255
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 256
    .local v0, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_d

    .line 257
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 253
    :cond_d
    return-void
.end method

.method public launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 14
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-direct {p0, p2}, Lcom/android/server/search/SearchManagerService;->getLegacyAssistComponent(I)Landroid/content/ComponentName;

    move-result-object v6

    .line 288
    .local v6, "comp":Landroid/content/ComponentName;
    if-nez v6, :cond_8

    .line 289
    return v2

    .line 291
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 293
    .local v8, "ident":J
    :try_start_c
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 295
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 296
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_22} :catch_27
    .catchall {:try_start_c .. :try_end_22} :catchall_2d

    move-result v2

    .line 300
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    return v2

    .line 298
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_27
    move-exception v7

    .line 300
    .local v7, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    const/4 v2, 0x1

    return v2

    .line 299
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_2d
    move-exception v2

    .line 300
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    throw v2
.end method

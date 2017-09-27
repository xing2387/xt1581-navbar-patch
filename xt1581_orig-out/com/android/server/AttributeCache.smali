.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Entry;,
        Lcom/android/server/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/AttributeCache$Package;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/ArrayMap;

    .line 46
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 84
    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcom/android/server/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    .line 73
    :cond_b
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "styleable"    # [I
    .param p4, "userId"    # I

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 124
    .local v7, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/AttributeCache$Package;>;"
    if-eqz v7, :cond_2b

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AttributeCache$Package;

    .line 125
    :goto_11
    const/4 v5, 0x0

    .line 126
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v3, 0x0

    .line 127
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v6, :cond_2d

    .line 128
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    check-cast v5, Landroid/util/ArrayMap;

    .line 129
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    if-eqz v5, :cond_7c

    .line 130
    invoke-virtual {v5, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    check-cast v3, Lcom/android/server/AttributeCache$Entry;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_77

    .line 131
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v3, :cond_7c

    monitor-exit p0

    .line 132
    return-object v3

    .line 124
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_2b
    const/4 v6, 0x0

    .local v6, "pkg":Lcom/android/server/AttributeCache$Package;
    goto :goto_11

    .line 138
    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_2d
    :try_start_2d
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    .line 139
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 138
    const/4 v10, 0x0

    invoke-virtual {v8, p1, v10, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_38} :catch_3e
    .catchall {:try_start_2d .. :try_end_38} :catchall_77

    move-result-object v0

    .line 140
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_42

    .line 141
    const/4 v8, 0x0

    monitor-exit p0

    return-object v8

    .line 143
    .end local v0    # "context":Landroid/content/Context;
    :catch_3e
    move-exception v1

    .line 144
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    monitor-exit p0

    return-object v8

    .line 146
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_42
    :try_start_42
    new-instance v6, Lcom/android/server/AttributeCache$Package;

    invoke-direct {v6, v0}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .line 147
    .local v6, "pkg":Lcom/android/server/AttributeCache$Package;
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/ArrayMap;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 150
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    .local v4, "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_52
    if-nez v5, :cond_60

    .line 151
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 152
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_77

    .line 156
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_60
    :try_start_60
    new-instance v3, Lcom/android/server/AttributeCache$Entry;

    iget-object v8, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    .line 157
    iget-object v9, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v9, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 156
    invoke-direct {v3, v8, v9}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    :try_end_6d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_60 .. :try_end_6d} :catch_72
    .catchall {:try_start_60 .. :try_end_6d} :catchall_77

    .line 158
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    :try_start_6d
    invoke-virtual {v5, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6d .. :try_end_70} :catch_7a
    .catchall {:try_start_6d .. :try_end_70} :catchall_77

    monitor-exit p0

    .line 163
    return-object v3

    .line 159
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    :catch_72
    move-exception v2

    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v3, v4

    .line 160
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_74
    const/4 v8, 0x0

    monitor-exit p0

    return-object v8

    .line 122
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/AttributeCache$Package;>;"
    :catchall_77
    move-exception v8

    monitor-exit p0

    throw v8

    .line 159
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/AttributeCache$Package;>;"
    :catch_7a
    move-exception v2

    .restart local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_74

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_7c
    move-object v4, v3

    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    goto :goto_52
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v6, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 90
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/AttributeCache$Package;>;"
    if-eqz v4, :cond_41

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AttributeCache$Package;

    .line 91
    :goto_11
    if-eqz v3, :cond_4f

    .line 92
    invoke-static {v3}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v6

    if-eqz v6, :cond_46

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    invoke-static {v3}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_46

    .line 94
    invoke-static {v3}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 95
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2f
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_43

    .line 96
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AttributeCache$Entry;

    invoke-virtual {v6}, Lcom/android/server/AttributeCache$Entry;->recycle()V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 90
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_41
    const/4 v3, 0x0

    .local v3, "pkg":Lcom/android/server/AttributeCache$Package;
    goto :goto_11

    .line 93
    .end local v3    # "pkg":Lcom/android/server/AttributeCache$Package;
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 101
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_46
    iget-object v6, v3, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 102
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_4f
    monitor-exit p0

    .line 87
    return-void

    .line 88
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/AttributeCache$Package;>;"
    :catchall_51
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 110
    .local v0, "changes":I
    const v1, -0x400000a1    # -1.9999808f

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 116
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    .line 107
    return-void

    .line 108
    .end local v0    # "changes":I
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

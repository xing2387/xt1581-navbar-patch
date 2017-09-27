.class public abstract Lcom/android/server/location/GeoFencerBase;
.super Ljava/lang/Object;
.source "GeoFencerBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeoFencerBase"


# instance fields
.field private mGeoFences:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/location/GeoFenceParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    .line 58
    return-void
.end method


# virtual methods
.method public add(DDFJLandroid/app/PendingIntent;)V
    .registers 20
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expiration"    # J
    .param p8, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 64
    new-instance v1, Landroid/location/GeoFenceParams;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Landroid/location/GeoFenceParams;-><init>(DDFJLandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/GeoFencerBase;->add(Landroid/location/GeoFenceParams;)V

    .line 63
    return-void
.end method

.method public add(Landroid/location/GeoFenceParams;)V
    .registers 4
    .param p1, "geoFence"    # Landroid/location/GeoFenceParams;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    monitor-enter v1

    .line 70
    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    monitor-exit v1

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/location/GeoFencerBase;->start(Landroid/location/GeoFenceParams;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 73
    iget-object v1, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    monitor-enter v1

    .line 74
    :try_start_12
    iget-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    monitor-exit v1

    .line 68
    :cond_18
    return-void

    .line 69
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 73
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_49

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  GeoFences:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 162
    iget-object v2, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "geofence$iterator":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeoFenceParams;

    .line 163
    .local v0, "geofence":Landroid/location/GeoFenceParams;
    invoke-virtual {v0, p1, p2}, Landroid/location/GeoFenceParams;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_39

    .line 158
    .end local v0    # "geofence":Landroid/location/GeoFenceParams;
    .end local v1    # "geofence$iterator":Ljava/util/Iterator;
    :cond_49
    return-void
.end method

.method public getAllGeoFences()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/location/GeoFenceParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getGeoFence(Landroid/app/PendingIntent;)Ljava/util/Collection;
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Landroid/location/GeoFenceParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 119
    .local v2, "matchingGeoFences":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/location/GeoFenceParams;>;"
    iget-object v4, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    monitor-enter v4

    .line 120
    :try_start_8
    iget-object v3, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GeoFenceParams;>;"
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeoFenceParams;

    .line 122
    .local v0, "geofence":Landroid/location/GeoFenceParams;
    invoke-virtual {v0}, Landroid/location/GeoFenceParams;->getIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 123
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_28

    goto :goto_e

    .line 119
    .end local v0    # "geofence":Landroid/location/GeoFenceParams;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GeoFenceParams;>;"
    :catchall_28
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GeoFenceParams;>;"
    :cond_2b
    monitor-exit v4

    .line 127
    return-object v2
.end method

.method public getNumbOfGeoFences()I
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public hasCaller(I)Z
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "alert$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeoFenceParams;

    .line 132
    .local v0, "alert":Landroid/location/GeoFenceParams;
    iget v2, v0, Landroid/location/GeoFenceParams;->mUid:I

    if-ne v2, p1, :cond_6

    .line 133
    const/4 v2, 0x1

    return v2

    .line 136
    .end local v0    # "alert":Landroid/location/GeoFenceParams;
    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method public remove(DDFLandroid/app/PendingIntent;)V
    .registers 18
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 82
    new-instance v1, Landroid/location/GeoFenceParams;

    .line 83
    const-wide v7, 0x7fffffffffffffffL

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v9, p6

    .line 82
    invoke-direct/range {v1 .. v9}, Landroid/location/GeoFenceParams;-><init>(DDFJLandroid/app/PendingIntent;)V

    .line 83
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/GeoFencerBase;->remove(Landroid/location/GeoFenceParams;Z)V

    .line 80
    return-void
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "geoFence":Landroid/location/GeoFenceParams;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GeoFencerBase;->stop(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 97
    iget-object v4, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    monitor-enter v4

    .line 98
    :try_start_a
    iget-object v3, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GeoFenceParams;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 99
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GeoFenceParams;

    .line 100
    .local v1, "geofence":Landroid/location/GeoFenceParams;
    invoke-virtual {v1}, Landroid/location/GeoFenceParams;->getIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2a

    goto :goto_10

    .line 97
    .end local v1    # "geofence":Landroid/location/GeoFenceParams;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GeoFenceParams;>;"
    :catchall_2a
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GeoFenceParams;>;"
    :cond_2d
    monitor-exit v4

    .line 93
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GeoFenceParams;>;"
    :cond_2e
    return-void
.end method

.method public remove(Landroid/location/GeoFenceParams;Z)V
    .registers 4
    .param p1, "geoFence"    # Landroid/location/GeoFenceParams;
    .param p2, "localOnly"    # Z

    .prologue
    .line 88
    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/location/GeoFencerBase;->stop(Landroid/location/GeoFenceParams;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_d
    return-void
.end method

.method public removeCaller(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 141
    iget-object v3, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    monitor-enter v3

    .line 142
    :try_start_3
    iget-object v2, p0, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GeoFenceParams;>;"
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeoFenceParams;

    .line 144
    .local v0, "geofence":Landroid/location/GeoFenceParams;
    invoke-virtual {v0}, Landroid/location/GeoFenceParams;->getCallerUid()I

    move-result v2

    if-ne v2, p1, :cond_9

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1f

    goto :goto_9

    .line 141
    .end local v0    # "geofence":Landroid/location/GeoFenceParams;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GeoFenceParams;>;"
    :catchall_1f
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GeoFenceParams;>;"
    :cond_22
    monitor-exit v3

    .line 139
    return-void
.end method

.method protected abstract start(Landroid/location/GeoFenceParams;)Z
.end method

.method protected abstract stop(Landroid/app/PendingIntent;)Z
.end method

.method protected abstract stop(Landroid/location/GeoFenceParams;)Z
.end method

.method public transferService(Lcom/android/server/location/GeoFencerBase;)V
    .registers 5
    .param p1, "geofencer"    # Lcom/android/server/location/GeoFencerBase;

    .prologue
    .line 152
    iget-object v2, p1, Lcom/android/server/location/GeoFencerBase;->mGeoFences:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "alert$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeoFenceParams;

    .line 153
    .local v0, "alert":Landroid/location/GeoFenceParams;
    invoke-virtual {p1, v0}, Lcom/android/server/location/GeoFencerBase;->stop(Landroid/location/GeoFenceParams;)Z

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/server/location/GeoFencerBase;->add(Landroid/location/GeoFenceParams;)V

    goto :goto_6

    .line 151
    .end local v0    # "alert":Landroid/location/GeoFenceParams;
    :cond_19
    return-void
.end method

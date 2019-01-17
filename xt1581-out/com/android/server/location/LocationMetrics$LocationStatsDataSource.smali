.class public Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;
.super Ljava/lang/Object;
.source "LocationMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationStatsDataSource"
.end annotation


# static fields
.field private static mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static sLocationStatsDataSource:Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;


# instance fields
.field private mAllColumns:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 183
    const-string/jumbo v1, "stat_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 184
    const-string/jumbo v1, "stat_value_int"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "stat_value_string"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 182
    iput-object v0, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    .line 194
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->sLocationStatsDataSource:Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;

    if-nez v0, :cond_b

    .line 189
    new-instance v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->sLocationStatsDataSource:Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;

    .line 191
    :cond_b
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->sLocationStatsDataSource:Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;

    return-object v0
.end method

.method private statExists(Ljava/lang/String;)Z
    .registers 13
    .param p1, "statName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 318
    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 319
    .local v4, "statNameArray":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "location_stats"

    .line 320
    iget-object v2, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    const-string/jumbo v3, "stat_name == ?"

    move-object v6, v5

    move-object v7, v5

    .line 319
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 322
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_21

    .line 323
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 324
    return v10

    .line 326
    :cond_21
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 327
    return v9
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 199
    :try_start_1
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 200
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 203
    :cond_12
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    invoke-virtual {v0}, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;->close()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    .line 198
    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLongValueByName(Ljava/lang/String;J)J
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVal"    # J

    .prologue
    monitor-enter p0

    .line 269
    const/4 v0, 0x1

    :try_start_2
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 271
    .local v4, "statNameArray":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 280
    :goto_13
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "location_stats"

    .line 281
    iget-object v2, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    const-string/jumbo v3, "stat_name == ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 280
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 282
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5d

    .line 284
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 288
    .local v10, "retVal":J
    :goto_32
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_5f

    monitor-exit p0

    .line 289
    return-wide v10

    .line 273
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "retVal":J
    :cond_37
    :try_start_37
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    invoke-virtual {v0}, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_3f} :catch_40
    .catchall {:try_start_37 .. :try_end_3f} :catchall_5f

    goto :goto_13

    .line 274
    :catch_40
    move-exception v9

    .line 275
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_41
    const-string/jumbo v0, "Location Metrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception getting DB connection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_5f

    monitor-exit p0

    .line 276
    return-wide p2

    .line 286
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_5d
    move-wide v10, p2

    .restart local v10    # "retVal":J
    goto :goto_32

    .end local v4    # "statNameArray":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "retVal":J
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStringValueByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 294
    const/4 v0, 0x1

    :try_start_2
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 296
    .local v4, "statNameArray":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 305
    :goto_13
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "location_stats"

    .line 306
    iget-object v2, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    const-string/jumbo v3, "stat_name == ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 305
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 307
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5d

    .line 309
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 313
    .local v10, "retVal":Ljava/lang/String;
    :goto_32
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_5f

    monitor-exit p0

    .line 314
    return-object v10

    .line 298
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "retVal":Ljava/lang/String;
    :cond_37
    :try_start_37
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    invoke-virtual {v0}, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_3f} :catch_40
    .catchall {:try_start_37 .. :try_end_3f} :catchall_5f

    goto :goto_13

    .line 299
    :catch_40
    move-exception v9

    .line 300
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_41
    const-string/jumbo v0, "Location Metrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception getting DB connection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_5f

    monitor-exit p0

    .line 301
    return-object p2

    .line 311
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_5d
    move-object v10, p2

    .restart local v10    # "retVal":Ljava/lang/String;
    goto :goto_32

    .end local v4    # "statNameArray":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "retVal":Ljava/lang/String;
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateLongStatVal(Ljava/lang/String;J)V
    .registers 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "statVal"    # J

    .prologue
    monitor-enter p0

    .line 207
    :try_start_1
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 208
    .local v13, "values":Landroid/content/ContentValues;
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v12, v0

    .line 209
    .local v12, "names":[Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 211
    .local v10, "insertId":J
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 220
    :goto_1a
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->statExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 221
    const-string/jumbo v0, "stat_value_int"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "location_stats"

    .line 223
    const-string/jumbo v2, "stat_name == ?"

    .line 222
    invoke-virtual {v0, v1, v13, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    .line 231
    :goto_37
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "location_stats"

    .line 232
    iget-object v2, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 233
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 231
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 234
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_a0

    monitor-exit p0

    .line 206
    return-void

    .line 213
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_5f
    :try_start_5f
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    invoke-virtual {v0}, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_67} :catch_68
    .catchall {:try_start_5f .. :try_end_67} :catchall_a0

    goto :goto_1a

    .line 214
    :catch_68
    move-exception v9

    .line 215
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_69
    const-string/jumbo v0, "Location Metrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception getting DB connection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_69 .. :try_end_83} :catchall_a0

    monitor-exit p0

    .line 216
    return-void

    .line 225
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_85
    :try_start_85
    const-string/jumbo v0, "stat_name"

    invoke-virtual {v13, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, "stat_value_int"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "location_stats"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9e
    .catchall {:try_start_85 .. :try_end_9e} :catchall_a0

    move-result-wide v10

    goto :goto_37

    .end local v10    # "insertId":J
    .end local v12    # "names":[Ljava/lang/String;
    .end local v13    # "values":Landroid/content/ContentValues;
    :catchall_a0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateStringStatVal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "statVal"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 238
    :try_start_1
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v15, "values":Landroid/content/ContentValues;
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v14, v2

    .line 240
    .local v14, "names":[Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 242
    .local v12, "insertId":J
    sget-object v2, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_5f

    sget-object v2, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 251
    :goto_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->statExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 252
    const-string/jumbo v2, "stat_value_string"

    move-object/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v2, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "location_stats"

    .line 254
    const-string/jumbo v4, "stat_name == ?"

    .line 253
    invoke-virtual {v2, v3, v15, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v12, v2

    .line 261
    :goto_35
    sget-object v2, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "location_stats"

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 263
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 261
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 264
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_a0

    monitor-exit p0

    .line 237
    return-void

    .line 244
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_5f
    :try_start_5f
    sget-object v2, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    invoke-virtual {v2}, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_67} :catch_68
    .catchall {:try_start_5f .. :try_end_67} :catchall_a0

    goto :goto_1a

    .line 245
    :catch_68
    move-exception v11

    .line 246
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_69
    const-string/jumbo v2, "Location Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception getting DB connection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_69 .. :try_end_83} :catchall_a0

    monitor-exit p0

    .line 247
    return-void

    .line 256
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_85
    :try_start_85
    const-string/jumbo v2, "stat_name"

    move-object/from16 v0, p1

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v2, "stat_value_string"

    move-object/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v2, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "location_stats"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9e
    .catchall {:try_start_85 .. :try_end_9e} :catchall_a0

    move-result-wide v12

    goto :goto_35

    .end local v12    # "insertId":J
    .end local v14    # "names":[Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    :catchall_a0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

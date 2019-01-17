.class Lcom/android/server/location/LocationMetrics$MySQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocationMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MySQLiteHelper"
.end annotation


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_STAT_NAME:Ljava/lang/String; = "stat_name"

.field public static final COLUMN_STAT_VALUE_INT:Ljava/lang/String; = "stat_value_int"

.field public static final COLUMN_STAT_VALUE_STRING:Ljava/lang/String; = "stat_value_string"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table location_stats(_id integer primary key autoincrement, stat_name text not null, stat_value_int integer, stat_value_string text);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "location_stats.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_LOCATION_STATS:Ljava/lang/String; = "location_stats"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    const-string/jumbo v0, "location_stats.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 351
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 357
    const-string/jumbo v0, "create table location_stats(_id integer primary key autoincrement, stat_name text not null, stat_value_int integer, stat_value_string text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 362
    invoke-static {}, Lcom/android/server/location/LocationMetrics;->-get0()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 363
    const-class v0, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    const-string/jumbo v2, ", which will destroy all old data"

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_35
    const-string/jumbo v0, "DROP TABLE IF EXISTS location_stats"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 361
    return-void
.end method

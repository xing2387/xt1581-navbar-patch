.class public Lcom/google/android/gms/internal/tf;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final aCk:Landroid/net/Uri;

.field public static final aCl:Ljava/util/regex/Pattern;

.field public static final aCm:Ljava/util/regex/Pattern;

.field private static aCn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static aCo:Ljava/lang/Object;

.field private static aCp:[Ljava/lang/String;

.field private static aCq:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-string/jumbo v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/tf;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/tf;->aCk:Landroid/net/Uri;

    const-string/jumbo v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/tf;->aCl:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/tf;->aCm:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/tf;->aCp:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/tf;->aCq:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic D(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/tf;->aCo:Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/tf;->sT()V

    const-class v1, Lcom/google/android/gms/internal/tf;

    monitor-enter v1

    :try_start_9
    invoke-static {p0}, Lcom/google/android/gms/internal/tf;->a(Landroid/content/ContentResolver;)V

    sget-object v6, Lcom/google/android/gms/internal/tf;->aCo:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/tf;->aCn:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_43

    sget-object v1, Lcom/google/android/gms/internal/tf;->aCp:[Ljava/lang/String;

    array-length v4, v1

    move v0, v3

    :goto_1b
    if-lt v0, v4, :cond_46

    sget-object v1, Lcom/google/android/gms/internal/tf;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v3

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_52

    :cond_2c
    :try_start_2c
    sget-object v0, Lcom/google/android/gms/internal/tf;->aCn:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_77

    if-nez v1, :cond_6a

    :goto_34
    return-object p2

    :cond_35
    :try_start_35
    sget-object v0, Lcom/google/android/gms/internal/tf;->aCn:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_41

    :goto_3f
    monitor-exit v1

    return-object p2

    :cond_41
    move-object p2, v0

    goto :goto_3f

    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    aget-object v5, v1, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_51

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_51
    return-object p2

    :cond_52
    :try_start_52
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/tf;

    monitor-enter v2
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_77

    :try_start_60
    sget-object v3, Lcom/google/android/gms/internal/tf;->aCo:Ljava/lang/Object;

    if-eq v6, v3, :cond_6e

    :goto_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_74

    if-nez v0, :cond_7b

    :goto_67
    if-nez v1, :cond_7d

    :goto_69
    return-object p2

    :cond_6a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :cond_6e
    :try_start_6e
    sget-object v3, Lcom/google/android/gms/internal/tf;->aCn:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :catchall_74
    move-exception v0

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_74

    :try_start_76
    throw v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v0

    if-nez v1, :cond_81

    :goto_7a
    throw v0

    :cond_7b
    move-object p2, v0

    goto :goto_67

    :cond_7d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_69

    :cond_81
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7a
.end method

.method public static varargs a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/tf;->sT()V

    sget-object v1, Lcom/google/android/gms/internal/tf;->aCk:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-eqz v1, :cond_1f

    :goto_15
    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_2e

    move-result v2

    if-nez v2, :cond_20

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1f
    return-object v0

    :cond_20
    const/4 v2, 0x0

    :try_start_21
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2e

    goto :goto_15

    :catchall_2e
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static a(Landroid/content/ContentResolver;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/tf;->aCn:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/tf;->aCn:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/tf;->aCo:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/tf$1;

    const-string/jumbo v1, "Gservices"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/tf$1;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tf$1;->start()V

    goto :goto_4
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/tf;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    return p2

    :cond_8
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/google/android/gms/internal/tf;->aCl:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_56

    sget-object v1, Lcom/google/android/gms/internal/tf;->aCm:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_58

    const-string/jumbo v1, "Gservices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attempt to read gservices key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\") as boolean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_56
    const/4 v0, 0x1

    return v0

    :cond_58
    return v2
.end method

.method public static varargs b(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/google/android/gms/internal/tf;->sT()V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/tf;->a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/tf;

    monitor-enter v1

    :try_start_a
    invoke-static {p0}, Lcom/google/android/gms/internal/tf;->a(Landroid/content/ContentResolver;)V

    sput-object p1, Lcom/google/android/gms/internal/tf;->aCp:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    monitor-exit v1

    return-void

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Lcom/google/android/gms/internal/tf;->aCn:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/tf;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result p2

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/tf;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-wide p2

    :cond_7
    :try_start_7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-wide p2

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/tf;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sT()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/tf;->aCq:Landroid/content/Context;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/tf;->aCq:Landroid/content/Context;

    const-string/jumbo v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    const-string/jumbo v2, "attempting to read gservices without permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static synthetic sU()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/tf;->aCn:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic sV()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/tf;->aCp:[Ljava/lang/String;

    return-object v0
.end method

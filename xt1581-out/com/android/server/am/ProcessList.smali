.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_MAX_ADJ:I = 0x38a

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_CACHED_APPS:I

.field private static final MAX_EMPTY_APPS:I

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x1

.field static final SCHED_GROUP_TOP_APP:I = 0x2

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x3

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field private static final TAG:Ljava/lang/String;

.field static final TRIM_CACHED_APPS:I

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x3e9

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x11

    .line 45
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    .line 153
    const-string/jumbo v0, "ro.MAX_HIDDEN_APPS"

    const/16 v1, 0x18

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 152
    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 160
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->computeEmptyProcessLimit(I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 164
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 168
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 503
    new-array v0, v2, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 523
    new-array v0, v2, [J

    fill-array-data v0, :array_74

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 543
    new-array v0, v2, [J

    fill-array-data v0, :array_bc

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 563
    new-array v0, v2, [J

    fill-array-data v0, :array_104

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 583
    new-array v0, v2, [J

    fill-array-data v0, :array_14c

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    .line 44
    return-void

    .line 503
    nop

    :array_4e
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 523
    :array_74
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 543
    :array_bc
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    .line 563
    :array_104
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x4e20
        0x4e20
        0x4e20
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    .line 583
    :array_14c
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_44

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 202
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 216
    const v2, 0x1070058

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 218
    const v2, 0x1070059

    .line 217
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 220
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 221
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 222
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 223
    invoke-direct {p0, v6, v6, v6}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 214
    return-void

    .line 189
    nop

    :array_44
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 441
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_15

    .line 442
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    .line 443
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    :cond_10
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 446
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 440
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 335
    if-ne p2, p3, :cond_1a

    .line 336
    if-nez p1, :cond_5

    return-object p0

    .line 337
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 2
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 331
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(IZZZJ)J
    .registers 10
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .prologue
    .line 613
    if-eqz p2, :cond_d

    .line 614
    if-eqz p1, :cond_a

    .line 615
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 620
    .local v0, "table":[J
    :goto_6
    aget-wide v2, v0, p0

    add-long/2addr v2, p4

    return-wide v2

    .line 616
    .end local v0    # "table":[J
    :cond_a
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    goto :goto_6

    .line 617
    :cond_d
    if-eqz p1, :cond_12

    .line 618
    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_6

    .line 619
    :cond_12
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_6
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .registers 7
    .param p0, "setAdj"    # I

    .prologue
    const/16 v5, -0x2bc

    const/16 v4, -0x320

    const/16 v3, -0x384

    const/16 v1, -0x3e8

    const/4 v2, 0x0

    .line 343
    const/16 v0, 0x384

    if-lt p0, v0, :cond_1a

    .line 344
    const-string/jumbo v0, "cch"

    const-string/jumbo v1, "  "

    const/16 v2, 0x384

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :cond_1a
    const/16 v0, 0x320

    if-lt p0, v0, :cond_28

    .line 346
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x320

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_28
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_36

    .line 348
    const-string/jumbo v0, "prev "

    const/16 v1, 0x2bc

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    :cond_36
    const/16 v0, 0x258

    if-lt p0, v0, :cond_44

    .line 350
    const-string/jumbo v0, "home "

    const/16 v1, 0x258

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 351
    :cond_44
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_52

    .line 352
    const-string/jumbo v0, "svc  "

    const/16 v1, 0x1f4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 353
    :cond_52
    const/16 v0, 0x190

    if-lt p0, v0, :cond_60

    .line 354
    const-string/jumbo v0, "hvy  "

    const/16 v1, 0x190

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_60
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6e

    .line 356
    const-string/jumbo v0, "bkup "

    const/16 v1, 0x12c

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_6e
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_7c

    .line 358
    const-string/jumbo v0, "prcp "

    const/16 v1, 0xc8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    :cond_7c
    const/16 v0, 0x64

    if-lt p0, v0, :cond_8a

    .line 360
    const-string/jumbo v0, "vis  "

    const/16 v1, 0x64

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    :cond_8a
    if-ltz p0, :cond_95

    .line 362
    const-string/jumbo v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 363
    :cond_95
    if-lt p0, v5, :cond_9f

    .line 364
    const-string/jumbo v0, "psvc "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 365
    :cond_9f
    if-lt p0, v4, :cond_a9

    .line 366
    const-string/jumbo v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 367
    :cond_a9
    if-lt p0, v3, :cond_b3

    .line 368
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 369
    :cond_b3
    if-lt p0, v1, :cond_bd

    .line 370
    const-string/jumbo v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 372
    :cond_bd
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "curProcState"    # I

    .prologue
    .line 378
    packed-switch p0, :pswitch_data_50

    .line 434
    const-string/jumbo v0, "??"

    .line 437
    .local v0, "procState":Ljava/lang/String;
    :goto_6
    return-object v0

    .line 380
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "N "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 383
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "P "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 386
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "PU"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 389
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_13
    const-string/jumbo v0, "T "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 392
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_17
    const-string/jumbo v0, "SB"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 395
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1b
    const-string/jumbo v0, "SF"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 398
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1f
    const-string/jumbo v0, "TS"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 401
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_23
    const-string/jumbo v0, "IF"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 404
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_27
    const-string/jumbo v0, "IB"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 407
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2b
    const-string/jumbo v0, "BU"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 410
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2f
    const-string/jumbo v0, "HW"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 413
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_33
    const-string/jumbo v0, "S "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 416
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_37
    const-string/jumbo v0, "R "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 419
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3b
    const-string/jumbo v0, "HO"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 422
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3f
    const-string/jumbo v0, "LA"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 425
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_43
    const-string/jumbo v0, "CA"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 428
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_47
    const-string/jumbo v0, "Ca"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 431
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4b
    const-string/jumbo v0, "CE"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_6

    .line 378
    nop

    :pswitch_data_50
    .packed-switch -0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .registers 3
    .param p0, "test"    # Z

    .prologue
    .line 608
    if-eqz p0, :cond_6

    const/16 v0, 0x2710

    :goto_4
    int-to-long v0, v0

    return-wide v0

    :cond_6
    const/16 v0, 0x3a98

    goto :goto_4
.end method

.method private static openLmkdSocket()Z
    .registers 5

    .prologue
    .line 679
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 680
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 681
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "lmkd"

    .line 682
    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 681
    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 680
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 683
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_21

    .line 690
    const/4 v1, 0x1

    return v1

    .line 684
    :catch_21
    move-exception v0

    .line 685
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 687
    const/4 v1, 0x0

    return v1
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 4
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 604
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final remove(I)V
    .registers 3
    .param p0, "pid"    # I

    .prologue
    .line 671
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 672
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 673
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 674
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 670
    return-void
.end method

.method public static final setOomAdj(III)V
    .registers 13
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .prologue
    .line 650
    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_5

    .line 651
    return-void

    .line 653
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 654
    .local v4, "start":J
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 655
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 656
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 657
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 658
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 659
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 660
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 661
    .local v2, "now":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_5d

    .line 662
    const-string/jumbo v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 663
    const-string/jumbo v7, " = "

    .line 662
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_5d
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .registers 26
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x15e

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x43af0000    # 350.0f

    div-float v16, v17, v18

    .line 245
    .local v16, "scaleMem":F
    mul-int v17, p1, p2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x48bb8000    # 384000.0f

    sub-float v17, v17, v18

    const v18, 0x9c400

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v15, v17, v18

    .line 252
    .local v15, "scaleDisp":F
    cmpl-float v17, v16, v15

    if-lez v17, :cond_a0

    move/from16 v14, v16

    .line 253
    .local v14, "scale":F
    :goto_2f
    const/16 v17, 0x0

    cmpg-float v17, v14, v17

    if-gez v17, :cond_a2

    const/4 v14, 0x0

    .line 255
    :cond_36
    :goto_36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    .line 256
    const v18, 0x10e0009

    .line 255
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 257
    .local v10, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    .line 258
    const v18, 0x10e0008

    .line 257
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 263
    .local v9, "minfree_abs":I
    sget-object v17, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_ab

    const/4 v7, 0x1

    .line 265
    .local v7, "is64bit":Z
    :goto_56
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_b8

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v17, v0

    aget v8, v17, v6

    .line 267
    .local v8, "low":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v17, v0

    aget v5, v17, v6

    .line 268
    .local v5, "high":I
    if-eqz v7, :cond_82

    .line 270
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v6, v0, :cond_ad

    mul-int/lit8 v17, v5, 0x3

    div-int/lit8 v5, v17, 0x2

    .line 273
    :cond_82
    :goto_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    int-to-float v0, v8

    move/from16 v18, v0

    sub-int v19, v5, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    aput v18, v17, v6

    .line 265
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .end local v5    # "high":I
    .end local v6    # "i":I
    .end local v7    # "is64bit":Z
    .end local v8    # "low":I
    .end local v9    # "minfree_abs":I
    .end local v10    # "minfree_adj":I
    .end local v14    # "scale":F
    :cond_a0
    move v14, v15

    .line 252
    goto :goto_2f

    .line 254
    .restart local v14    # "scale":F
    :cond_a2
    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v17, v14, v17

    if-lez v17, :cond_36

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_36

    .line 263
    .restart local v9    # "minfree_abs":I
    .restart local v10    # "minfree_adj":I
    :cond_ab
    const/4 v7, 0x0

    .restart local v7    # "is64bit":Z
    goto :goto_56

    .line 271
    .restart local v5    # "high":I
    .restart local v6    # "i":I
    .restart local v8    # "low":I
    :cond_ad
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v6, v0, :cond_82

    mul-int/lit8 v17, v5, 0x7

    div-int/lit8 v5, v17, 0x4

    goto :goto_82

    .line 276
    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_b8
    if-ltz v9, :cond_108

    .line 277
    const/4 v6, 0x0

    :goto_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_108

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 278
    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    aput v18, v17, v6

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_bb

    .line 283
    :cond_108
    if-eqz v10, :cond_170

    .line 284
    const/4 v6, 0x0

    :goto_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_170

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    aget v18, v17, v6

    int-to-float v0, v10

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v20, v0

    aget v20, v20, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 285
    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    aput v18, v17, v6

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    if-gez v17, :cond_16d

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, v6

    .line 284
    :cond_16d
    add-int/lit8 v6, v6, 0x1

    goto :goto_10b

    .line 296
    :cond_170
    const/16 v17, 0x38a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v18

    const-wide/16 v20, 0x400

    div-long v18, v18, v20

    const-wide/16 v20, 0x3

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 300
    mul-int v17, p1, p2

    mul-int/lit8 v17, v17, 0x4

    mul-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    div-int/lit16 v11, v0, 0x400

    .line 301
    .local v11, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e000b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 302
    .local v13, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e000a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 304
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_1ab

    .line 305
    move v11, v12

    .line 308
    :cond_1ab
    if-eqz v13, :cond_1b1

    .line 309
    add-int/2addr v11, v13

    .line 310
    if-gez v11, :cond_1b1

    .line 311
    const/4 v11, 0x0

    .line 315
    :cond_1b1
    if-eqz p3, :cond_215

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 317
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 318
    const/4 v6, 0x0

    :goto_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_208

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x1000

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 318
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d0

    .line 323
    :cond_208
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 324
    const-string/jumbo v17, "sys.sysctl.extra_free_kbytes"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_215
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v8, 0x0

    .line 695
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v4, 0x3

    if-ge v2, v4, :cond_39

    .line 696
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_19

    .line 697
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v4

    if-nez v4, :cond_19

    .line 699
    const-wide/16 v4, 0x3e8

    :try_start_11
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_17

    .line 695
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 700
    :catch_17
    move-exception v3

    .local v3, "ie":Ljava/lang/InterruptedException;
    goto :goto_14

    .line 707
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :cond_19
    :try_start_19
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_28

    .line 708
    return-void

    .line 709
    :catch_28
    move-exception v0

    .line 710
    .local v0, "ex":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error writing to lowmemorykiller socket"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :try_start_31
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_3a

    .line 717
    :goto_36
    sput-object v8, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_14

    .line 693
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_39
    return-void

    .line 714
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_3a
    move-exception v1

    .local v1, "ex2":Ljava/io/IOException;
    goto :goto_36
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_1f

    .line 228
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 229
    .local v0, "p":Landroid/graphics/Point;
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 230
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1f

    .line 231
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 232
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 226
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_1f
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .registers 3

    .prologue
    .line 637
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .registers 6
    .param p1, "adjustment"    # I

    .prologue
    .line 624
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 625
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_14

    .line 626
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    return-wide v2

    .line 624
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 629
    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    return-wide v2
.end method

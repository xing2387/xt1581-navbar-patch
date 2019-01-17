.class public Lcom/motorola/server/MotoPersDataBlockService;
.super Lcom/android/server/SystemService;
.source "MotoPersDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/MotoPersDataBlockService$1;,
        Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/motorola/server/MotoPersDataBlockService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/io/FileInputStream;I)[B
    .registers 3
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/server/MotoPersDataBlockService;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J
    .registers 4
    .param p1, "db"    # Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/MotoPersDataBlockService;->getBlockDeviceSize(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V
    .registers 2
    .param p1, "db"    # Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/MotoPersDataBlockService;->enforcePermission(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/motorola/server/MotoPersDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mLock:Ljava/lang/Object;

    .line 98
    new-instance v1, Lcom/motorola/server/MotoPersDataBlockService$1;

    invoke-direct {v1, p0}, Lcom/motorola/server/MotoPersDataBlockService$1;-><init>(Lcom/motorola/server/MotoPersDataBlockService;)V

    iput-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mService:Landroid/os/IBinder;

    .line 44
    iput-object p1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mContext:Landroid/content/Context;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    invoke-direct {v0, p0, v5}, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;-><init>(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V

    .line 48
    .local v0, "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPath:Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "com.motorola.permission.READ_CID_BLOCK"

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPermission:Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "cid block"

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mDescription:Ljava/lang/String;

    .line 51
    iput-boolean v3, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mWritable:Z

    .line 52
    iput-wide v6, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mSize:J

    .line 53
    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 55
    new-instance v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .end local v0    # "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    invoke-direct {v0, p0, v5}, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;-><init>(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V

    .line 56
    .restart local v0    # "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPath:Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "com.motorola.permission.ACCESS_CLOGO_BLOCK"

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPermission:Ljava/lang/String;

    .line 58
    const-string/jumbo v1, "clogo block"

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mDescription:Ljava/lang/String;

    .line 59
    iput-boolean v4, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mWritable:Z

    .line 60
    iput-wide v6, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mSize:J

    .line 61
    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 42
    return-void
.end method

.method private enforcePermission(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V
    .registers 6
    .param p1, "db"    # Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/motorola/server/MotoPersDataBlockService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPermission:Ljava/lang/String;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t access "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private getBlockDeviceSize(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J
    .registers 8
    .param p1, "db"    # Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_3
    iget-wide v2, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mSize:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_13

    .line 77
    iget-object v0, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/motorola/server/MotoPersDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mSize:J
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    :cond_13
    monitor-exit v1

    .line 81
    iget-wide v0, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mSize:J

    return-wide v0

    .line 75
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private static readFully(Ljava/io/FileInputStream;I)[B
    .registers 6
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "pos":I
    new-array v1, p1, [B

    .line 88
    .local v1, "data":[B
    :goto_3
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 89
    .local v0, "amt":I
    if-gtz v0, :cond_c

    .line 90
    return-object v1

    .line 92
    :cond_c
    add-int/2addr v2, v0

    goto :goto_3
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .prologue
    .line 66
    const-string/jumbo v0, "moto_pers_data_block"

    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/server/MotoPersDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 65
    return-void
.end method

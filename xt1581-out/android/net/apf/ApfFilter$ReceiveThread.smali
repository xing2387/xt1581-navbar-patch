.class Landroid/net/apf/ApfFilter$ReceiveThread;
.super Ljava/lang/Thread;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private final mSocket:Ljava/io/FileDescriptor;

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method public constructor <init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/apf/ApfFilter;
    .param p2, "socket"    # Ljava/io/FileDescriptor;

    .prologue
    .line 79
    iput-object p1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 75
    const/16 v0, 0x5ea

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    .line 80
    iput-object p2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    .line 79
    return-void
.end method


# virtual methods
.method public halt()V
    .registers 3

    .prologue
    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    .line 87
    :try_start_3
    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 83
    :goto_8
    return-void

    .line 88
    :catch_9
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_8
.end method

.method public run()V
    .registers 7

    .prologue
    .line 93
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    const-string/jumbo v3, "begin monitoring"

    invoke-static {v2, v3}, Landroid/net/apf/ApfFilter;->-wrap2(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V

    .line 94
    :cond_8
    :goto_8
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v2, :cond_2f

    .line 96
    :try_start_c
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    iget-object v4, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 97
    .local v1, "length":I
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    invoke-static {v2, v3, v1}, Landroid/net/apf/ApfFilter;->-wrap3(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1f} :catch_20
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_1f} :catch_20

    goto :goto_8

    .line 98
    .end local v1    # "length":I
    :catch_20
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v2, :cond_8

    .line 100
    const-string/jumbo v2, "ApfFilter"

    const-string/jumbo v3, "Read error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    return-void
.end method

.class public Lcom/google/android/gms/common/data/a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/data/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dw:I

.field final JQ:I

.field NU:Landroid/os/ParcelFileDescriptor;

.field private NV:Landroid/graphics/Bitmap;

.field private NW:Z

.field private NX:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/data/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/data/a;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/a;->NU:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/google/android/gms/common/data/a;->JQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/data/a;->NV:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/a;->NW:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/common/data/a;->Dw:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/data/a;->NU:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/data/a;->JQ:I

    iput-object p1, p0, Lcom/google/android/gms/common/data/a;->NV:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/google/android/gms/common/data/a;->NW:Z

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 5

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "BitmapTeleporter"

    const-string/jumbo v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private hY()Ljava/io/FileOutputStream;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/data/a;->NX:Ljava/io/File;

    if-eqz v0, :cond_21

    :try_start_4
    const-string/jumbo v0, "teleporter"

    const-string/jumbo v1, ".tmp"

    iget-object v2, p0, Lcom/google/android/gms/common/data/a;->NX:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_2a

    move-result-object v0

    :try_start_10
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/data/a;->NU:Landroid/os/ParcelFileDescriptor;
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1d} :catch_34

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setTempDir() must be called before writing this object to a parcel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not create temporary file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_34
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Temporary file is somehow already deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .registers 4

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/common/data/a;->NX:Ljava/io/File;

    return-void

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot set null temp directory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hX()Landroid/graphics/Bitmap;
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/common/data/a;->NW:Z

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/common/data/a;->NV:Landroid/graphics/Bitmap;

    return-object v0

    :cond_7
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v2, p0, Lcom/google/android/gms/common/data/a;->NU:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_13
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2c} :catch_40
    .catchall {:try_start_13 .. :try_end_2c} :catchall_4a

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iput-object v1, p0, Lcom/google/android/gms/common/data/a;->NV:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/a;->NW:Z

    goto :goto_4

    :catch_40
    move-exception v0

    :try_start_41
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Could not read from parcel file descriptor"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/data/a;->NU:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_8

    :goto_4
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/b;->a(Lcom/google/android/gms/common/data/a;Landroid/os/Parcel;I)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/data/a;->NV:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/common/data/a;->hY()Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_27
    array-length v2, v1

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_47} :catch_4b
    .catchall {:try_start_27 .. :try_end_47} :catchall_55

    invoke-direct {p0, v3}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catch_4b
    move-exception v0

    :try_start_4c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not write into unlinked file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V

    throw v0
.end method

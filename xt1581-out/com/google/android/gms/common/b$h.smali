.class final Lcom/google/android/gms/common/b$h;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# static fields
.field static final Md:[Lcom/google/android/gms/common/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/b$a;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/b$h$1;

    const-string/jumbo v3, "0\u0082\u0003\u00c10\u0082\u0002\u00a9\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00e9\u0005DY+\u0084P\u00820"

    invoke-static {v3}, Lcom/google/android/gms/common/b$a;->aT(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/b$h$1;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/common/b$h$2;

    const-string/jumbo v3, "0\u0082\u0003\u00c10\u0082\u0002\u00a9\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d0T\u00e3\u00ce\u00db\u00ce\u0004\u008b0"

    invoke-static {v3}, Lcom/google/android/gms/common/b$a;->aT(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/b$h$2;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/b$h;->Md:[Lcom/google/android/gms/common/b$a;

    return-void
.end method

.class Lcom/google/android/gms/internal/tf$1;
.super Ljava/lang/Thread;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/tf;->a(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aCr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/tf$1;->aCr:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/google/android/gms/internal/tf$1;->aCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gms/internal/tf;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/google/android/gms/internal/tf$1$1;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/tf$1$1;-><init>(Lcom/google/android/gms/internal/tf$1;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

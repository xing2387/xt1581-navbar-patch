.class Lcom/google/android/gms/common/api/d$c;
.super Landroid/os/Handler;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic No:Lcom/google/android/gms/common/api/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/d$c;->No:Lcom/google/android/gms/common/api/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    const-string/jumbo v0, "GoogleApiClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void

    :pswitch_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$c;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->h(Lcom/google/android/gms/common/api/d;)V

    goto :goto_21

    :pswitch_28
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$c;->No:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->i(Lcom/google/android/gms/common/api/d;)V

    goto :goto_21

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_28
    .end packed-switch
.end method

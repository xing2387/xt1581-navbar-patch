.class Lcom/android/server/audio/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 9
    .param p1, "error"    # I

    .prologue
    const/4 v3, 0x0

    .line 387
    packed-switch p1, :pswitch_data_14

    .line 386
    :goto_4
    return-void

    .line 389
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x4

    .line 390
    const/4 v2, 0x1

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    .line 389
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap36(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_4

    .line 387
    :pswitch_data_14
    .packed-switch 0x64
        :pswitch_5
    .end packed-switch
.end method
.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;
.super Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;
.source "VoiceInteractionSessionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-direct {p0}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-boolean v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v0, :cond_19

    .line 167
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    .line 168
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iput-object p1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v1

    .line 164
    return-void

    .line 165
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

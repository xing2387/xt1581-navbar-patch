.class final Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;
    }
.end annotation


# static fields
.field private static final KEY_RECEIVER_EXTRA_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_RECEIVER_EXTRA_INDEX:Ljava/lang/String; = "index"

.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field final mAm:Landroid/app/IActivityManager;

.field final mAppOps:Landroid/app/AppOpsManager;

.field mAssistData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;",
            ">;"
        }
    .end annotation
.end field

.field final mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

.field final mBindIntent:Landroid/content/Intent;

.field mBound:Z

.field final mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

.field final mCallingUid:I

.field mCanceled:Z

.field final mContext:Landroid/content/Context;

.field final mFullConnection:Landroid/content/ServiceConnection;

.field mFullService:Landroid/service/voice/IVoiceInteractionSessionService;

.field mFullyBound:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveAssistData:Z

.field mHaveScreenshot:Z

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final mLock:Ljava/lang/Object;

.field mPendingAssistDataCount:I

.field mPendingShowCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionOwner:Landroid/os/IBinder;

.field mScreenshot:Landroid/graphics/Bitmap;

.field final mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

.field mService:Landroid/service/voice/IVoiceInteractionSessionService;

.field mSession:Landroid/service/voice/IVoiceInteractionSession;

.field final mSessionComponentName:Landroid/content/ComponentName;

.field mShowArgs:Landroid/os/Bundle;

.field private mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

.field mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field mShowFlags:I

.field mShown:Z

.field final mToken:Landroid/os/IBinder;

.field final mUser:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksFailedLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksShownLocked()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V
    .registers 14
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "user"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "callback"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;
    .param p6, "callingUid"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    .line 114
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 113
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 136
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    .line 149
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 162
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    .line 608
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    .line 177
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 178
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 179
    iput p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 180
    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 181
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    .line 182
    iput p6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 183
    iput-object p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    .line 184
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    .line 186
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 185
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    .line 187
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_67
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "voicesession:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_84} :catch_b9

    move-result-object v1

    .line 195
    .end local v1    # "permOwner":Landroid/os/IBinder;
    :goto_85
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    .line 196
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.voice.VoiceInteractionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    .line 197
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 198
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    .line 200
    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 199
    const/16 v5, 0x31

    .line 198
    invoke-virtual {v2, v3, p0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 201
    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v2, :cond_cf

    .line 203
    :try_start_af
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 204
    const/16 v4, 0x7ef

    .line 203
    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b8} :catch_c4

    .line 176
    :goto_b8
    return-void

    .line 192
    .restart local v1    # "permOwner":Landroid/os/IBinder;
    :catch_b9
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "voicesession"

    const-string/jumbo v3, "AM dead"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "permOwner":Landroid/os/IBinder;
    :catch_c4
    move-exception v0

    .line 206
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VoiceInteractionServiceManager"

    const-string/jumbo v3, "Failed adding window token"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b8

    .line 209
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_cf
    const-string/jumbo v2, "VoiceInteractionServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed binding to voice interaction session service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 210
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8
.end method

.method private deliverSessionDataLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;)V
    .registers 15
    .param p1, "assistDataForActivity"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;

    .prologue
    .line 419
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    .line 420
    const-string/jumbo v2, "data"

    .line 419
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 421
    .local v10, "assistData":Landroid/os/Bundle;
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    .line 422
    const-string/jumbo v2, "structure"

    .line 421
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/assist/AssistStructure;

    .line 423
    .local v6, "structure":Landroid/app/assist/AssistStructure;
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    .line 424
    const-string/jumbo v2, "content"

    .line 423
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/assist/AssistContent;

    .line 425
    .local v7, "content":Landroid/app/assist/AssistContent;
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    const-string/jumbo v2, "android.intent.extra.ASSIST_UID"

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 426
    .local v3, "uid":I
    if-ltz v3, :cond_66

    if-eqz v7, :cond_66

    .line 427
    invoke-virtual {v7}, Landroid/app/assist/AssistContent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 428
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_53

    .line 429
    invoke-virtual {v12}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 430
    .local v1, "data":Landroid/content/ClipData;
    if-eqz v1, :cond_53

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 431
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 432
    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 431
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 435
    .end local v1    # "data":Landroid/content/ClipData;
    :cond_53
    invoke-virtual {v7}, Landroid/app/assist/AssistContent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 436
    .restart local v1    # "data":Landroid/content/ClipData;
    if-eqz v1, :cond_66

    .line 439
    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 438
    const/4 v2, 0x1

    move-object v0, p0

    .line 437
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 443
    .end local v1    # "data":Landroid/content/ClipData;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_66
    :try_start_66
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 444
    iget v8, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityIndex:I

    iget v9, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityCount:I

    move-object v5, v10

    .line 443
    invoke-interface/range {v4 .. v9}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_70} :catch_71

    .line 418
    :goto_70
    return-void

    .line 445
    :catch_71
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    goto :goto_70
.end method

.method private notifyPendingShowCallbacksFailedLocked()V
    .registers 4

    .prologue
    .line 562
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 564
    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 562
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 568
    :cond_17
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 561
    return-void

    .line 565
    :catch_1d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_14
.end method

.method private notifyPendingShowCallbacksShownLocked()V
    .registers 4

    .prologue
    .line 552
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 554
    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 552
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    :cond_17
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 551
    return-void

    .line 555
    :catch_1d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_14
.end method


# virtual methods
.method public cancelLocked(Z)V
    .registers 7
    .param p1, "finishTask"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    .line 493
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    .line 494
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v1, :cond_3c

    .line 495
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_15

    .line 497
    :try_start_10
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->destroy()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_50

    .line 502
    :cond_15
    :goto_15
    if-eqz p1, :cond_22

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_22

    .line 504
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_66

    .line 509
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    if-eqz v1, :cond_2d

    .line 510
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 511
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 515
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_5b

    .line 519
    :goto_34
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 520
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 521
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 522
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 524
    :cond_3c
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-eqz v1, :cond_4f

    .line 526
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullService:Landroid/service/voice/IVoiceInteractionSessionService;

    if-eqz v1, :cond_4d

    .line 527
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 528
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 531
    :cond_4d
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 491
    :cond_4f
    return-void

    .line 498
    :catch_50
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    const-string/jumbo v2, "Voice interation session already dead"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 516
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5b
    move-exception v0

    .line 517
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    const-string/jumbo v2, "Failed removing window token"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_66
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_22
.end method

.method public deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 7
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 538
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 539
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v1, :cond_1a

    .line 541
    :try_start_8
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {p1, v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 543
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_1c

    .line 546
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V

    .line 548
    :cond_1a
    const/4 v1, 0x1

    return v1

    .line 544
    :catch_1c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_17
.end method

.method deliverSessionDataLocked()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_7

    .line 376
    return-void

    .line 378
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    if-eqz v0, :cond_23

    .line 380
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 383
    :try_start_13
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1d} :catch_82

    .line 404
    :cond_1d
    :goto_1d
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    if-gtz v0, :cond_23

    .line 405
    iput-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    .line 408
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    if-eqz v0, :cond_32

    .line 410
    :try_start_27
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Landroid/service/voice/IVoiceInteractionSession;->handleScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_80

    .line 413
    :goto_2e
    iput-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    .line 414
    iput-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    .line 374
    :cond_32
    return-void

    .line 387
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 388
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    if-gtz v0, :cond_5b

    .line 389
    const-string/jumbo v0, "VoiceInteractionServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingAssistDataCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_5b
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    .line 392
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;

    .line 393
    .local v6, "assistData":Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;
    iget-object v0, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    if-nez v0, :cond_7c

    .line 395
    :try_start_6d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget v4, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityIndex:I

    .line 396
    iget v5, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityCount:I

    .line 395
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_79} :catch_7a

    goto :goto_33

    .line 397
    :catch_7a
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_33

    .line 400
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_7c
    invoke-direct {p0, v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;)V

    goto :goto_33

    .line 411
    .end local v6    # "assistData":Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;
    :catch_80
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    goto :goto_2e

    .line 384
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_82
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    goto :goto_1d
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 592
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 593
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 594
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowArgs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 595
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 597
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v0, :cond_78

    .line 598
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 599
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSession="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 600
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInteractor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 602
    :cond_78
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 603
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    if-eqz v0, :cond_98

    .line 604
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 591
    :cond_98
    return-void
.end method

.method public getUserDisabledShowContextLocked()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 217
    const-string/jumbo v2, "assist_structure_enabled"

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 216
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_14

    .line 218
    const/4 v0, 0x1

    .line 220
    :cond_14
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 221
    const-string/jumbo v2, "assist_screenshot_enabled"

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 220
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_27

    .line 222
    or-int/lit8 v0, v0, 0x2

    .line 224
    :cond_27
    return v0
.end method

.method grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V
    .registers 13
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 358
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 360
    :cond_12
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 361
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_2a

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 362
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 356
    :cond_2a
    return-void
.end method

.method grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V
    .registers 14
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    .line 369
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v6, :cond_16

    .line 370
    invoke-virtual {p1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V

    .line 369
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 367
    :cond_16
    return-void
.end method

.method grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string/jumbo v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 334
    return-void

    .line 336
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 339
    .local v10, "ident":J
    :try_start_12
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 340
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 339
    const/4 v2, 0x0

    move v1, p3

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 342
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 343
    .local v6, "sourceUserId":I
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    .line 345
    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    const/4 v5, 0x1

    move v2, p3

    move-object/from16 v3, p5

    move-object v4, p1

    .line 344
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_3e} :catch_50
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_3e} :catch_42
    .catchall {:try_start_12 .. :try_end_3e} :catchall_55

    .line 350
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    .end local v6    # "sourceUserId":I
    :goto_41
    return-void

    .line 347
    :catch_42
    move-exception v9

    .line 348
    .local v9, "e":Ljava/lang/SecurityException;
    :try_start_43
    const-string/jumbo v0, "VoiceInteractionServiceManager"

    const-string/jumbo v1, "Can\'t propagate permission"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_55

    .line 350
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_41

    .line 346
    .end local v9    # "e":Ljava/lang/SecurityException;
    :catch_50
    move-exception v8

    .line 350
    .local v8, "e":Landroid/os/RemoteException;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_41

    .line 349
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_55
    move-exception v0

    .line 350
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    throw v0
.end method

.method public hideLocked()Z
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 450
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v1, :cond_4b

    .line 451
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v1, :cond_36

    .line 452
    iput-boolean v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 453
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 454
    iput v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 455
    iput-boolean v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    .line 456
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 457
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_20

    .line 459
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->hide()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_50

    .line 464
    :cond_20
    :goto_20
    :try_start_20
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    .line 467
    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 464
    const/4 v4, 0x0

    .line 465
    const/4 v5, 0x3

    .line 464
    invoke-interface {v1, v2, v4, v5, v3}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_4e

    .line 470
    :goto_2b
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_36

    .line 472
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_4c

    .line 477
    :cond_36
    :goto_36
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-eqz v1, :cond_49

    .line 479
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullService:Landroid/service/voice/IVoiceInteractionSessionService;

    if-eqz v1, :cond_47

    .line 480
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 481
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 484
    :cond_47
    iput-boolean v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 486
    :cond_49
    const/4 v1, 0x1

    return v1

    .line 488
    :cond_4b
    return v7

    .line 473
    :catch_4c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_36

    .line 468
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_4e
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2b

    .line 460
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_50
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_20
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 573
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 574
    :try_start_3
    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSessionService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 575
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_25

    if-nez v1, :cond_18

    .line 577
    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-interface {v1, v3, v4, v5}, Landroid/service/voice/IVoiceInteractionSessionService;->newSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_1a
    .catchall {:try_start_d .. :try_end_18} :catchall_25

    :cond_18
    :goto_18
    monitor-exit v2

    .line 572
    return-void

    .line 578
    :catch_1a
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1b
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    const-string/jumbo v3, "Failed adding window token"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    goto :goto_18

    .line 573
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 586
    return-void
.end method

.method public showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;Ljava/util/List;)Z
    .registers 22
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "disabledContext"    # I
    .param p4, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p5, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "II",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p6, "topActivities":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v1, :cond_145

    .line 231
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-nez v1, :cond_1e

    .line 232
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    .line 235
    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 233
    const v7, 0xc000001

    .line 232
    invoke-virtual {v1, v2, v3, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 237
    :cond_1e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 238
    const/4 v11, 0x1

    .line 240
    .local v11, "isAssistDataAllowed":Z
    :try_start_22
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->isAssistDataAllowedOnCurrentActivity()Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_155

    move-result v11

    .line 243
    .end local v11    # "isAssistDataAllowed":Z
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    move-result v1

    or-int p3, p3, v1

    .line 244
    if-eqz v11, :cond_af

    .line 245
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_ad

    const/4 v14, 0x1

    .line 246
    .local v14, "structureEnabled":Z
    :goto_35
    if-eqz v11, :cond_b3

    if-eqz v14, :cond_b3

    .line 247
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_b1

    const/4 v13, 0x1

    .line 248
    .local v13, "screenshotEnabled":Z
    :goto_3e
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 249
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 250
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    .line 251
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    .line 252
    const/4 v12, 0x0

    .line 253
    .local v12, "needDisclosure":Z
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_12a

    .line 254
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 255
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 254
    const/16 v6, 0x31

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_121

    if-eqz v14, :cond_121

    .line 257
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 258
    if-eqz p5, :cond_b5

    const/4 v8, 0x1

    .line 260
    .local v8, "count":I
    :goto_6d
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6e
    if-ge v10, v8, :cond_d2

    const/4 v1, 0x1

    if-ge v10, v1, :cond_d2

    .line 261
    const/4 v1, 0x1

    if-ne v8, v1, :cond_ba

    move-object/from16 v5, p5

    .line 263
    .local v5, "topActivity":Landroid/os/IBinder;
    :goto_78
    :try_start_78
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "assist_with_context"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 264
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v4, "receiverExtras":Landroid/os/Bundle;
    const-string/jumbo v1, "index"

    invoke-virtual {v4, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string/jumbo v1, "count"

    invoke-virtual {v4, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    .line 268
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 269
    if-nez v10, :cond_c3

    const/4 v6, 0x1

    :goto_99
    if-nez v10, :cond_c5

    const/4 v7, 0x1

    .line 267
    :goto_9c
    const/4 v2, 0x1

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 270
    const/4 v12, 0x1

    .line 271
    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_aa} :catch_152

    .line 260
    .end local v4    # "receiverExtras":Landroid/os/Bundle;
    :cond_aa
    :goto_aa
    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    .line 245
    .end local v5    # "topActivity":Landroid/os/IBinder;
    .end local v8    # "count":I
    .end local v10    # "i":I
    .end local v12    # "needDisclosure":Z
    .end local v13    # "screenshotEnabled":Z
    .end local v14    # "structureEnabled":Z
    :cond_ad
    const/4 v14, 0x0

    .restart local v14    # "structureEnabled":Z
    goto :goto_35

    .line 244
    .end local v14    # "structureEnabled":Z
    :cond_af
    const/4 v14, 0x0

    .restart local v14    # "structureEnabled":Z
    goto :goto_35

    .line 247
    :cond_b1
    const/4 v13, 0x0

    .restart local v13    # "screenshotEnabled":Z
    goto :goto_3e

    .line 246
    .end local v13    # "screenshotEnabled":Z
    :cond_b3
    const/4 v13, 0x0

    .restart local v13    # "screenshotEnabled":Z
    goto :goto_3e

    .line 258
    .restart local v12    # "needDisclosure":Z
    :cond_b5
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v8

    .restart local v8    # "count":I
    goto :goto_6d

    .line 261
    .restart local v10    # "i":I
    :cond_ba
    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .restart local v5    # "topActivity":Landroid/os/IBinder;
    goto :goto_78

    .line 269
    .restart local v4    # "receiverExtras":Landroid/os/Bundle;
    :cond_c3
    const/4 v6, 0x0

    goto :goto_99

    :cond_c5
    const/4 v7, 0x0

    goto :goto_9c

    .line 272
    :cond_c7
    if-nez v10, :cond_aa

    .line 274
    const/4 v1, 0x1

    :try_start_ca
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    .line 275
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_d1} :catch_152

    .line 276
    const/4 v13, 0x0

    .line 289
    .end local v4    # "receiverExtras":Landroid/os/Bundle;
    .end local v5    # "topActivity":Landroid/os/IBinder;
    .end local v8    # "count":I
    .end local v10    # "i":I
    :cond_d2
    :goto_d2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    .line 290
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_137

    .line 291
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 292
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 291
    const/16 v6, 0x32

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_130

    if-eqz v13, :cond_130

    .line 295
    :try_start_ed
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "assist_with_screen"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 296
    const/4 v12, 0x1

    .line 297
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
    :try_end_fe
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_fe} :catch_150

    .line 307
    :goto_fe
    if-eqz v12, :cond_107

    .line 308
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    :cond_107
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_13b

    .line 312
    :try_start_10b
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    move-object/from16 v0, p4

    invoke-interface {v1, v2, v3, v0}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 313
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 314
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_11c
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_11c} :catch_14e

    .line 317
    :goto_11c
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V

    .line 321
    :cond_11f
    :goto_11f
    const/4 v1, 0x1

    return v1

    .line 283
    :cond_121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    .line 284
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_d2

    .line 287
    :cond_12a
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_d2

    .line 301
    :cond_130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    .line 302
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    goto :goto_fe

    .line 305
    :cond_137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    goto :goto_fe

    .line 318
    :cond_13b
    if-eqz p4, :cond_11f

    .line 319
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11f

    .line 323
    .end local v12    # "needDisclosure":Z
    .end local v13    # "screenshotEnabled":Z
    .end local v14    # "structureEnabled":Z
    :cond_145
    if-eqz p4, :cond_14a

    .line 325
    :try_start_147
    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_14a} :catch_14c

    .line 329
    :cond_14a
    :goto_14a
    const/4 v1, 0x0

    return v1

    .line 326
    :catch_14c
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_14a

    .line 315
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v12    # "needDisclosure":Z
    .restart local v13    # "screenshotEnabled":Z
    .restart local v14    # "structureEnabled":Z
    :catch_14e
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_11c

    .line 298
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_150
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_fe

    .line 279
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v5    # "topActivity":Landroid/os/IBinder;
    .restart local v8    # "count":I
    .restart local v10    # "i":I
    :catch_152
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto/16 :goto_aa

    .line 241
    .end local v5    # "topActivity":Landroid/os/IBinder;
    .end local v8    # "count":I
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "i":I
    .end local v12    # "needDisclosure":Z
    .end local v13    # "screenshotEnabled":Z
    .end local v14    # "structureEnabled":Z
    .restart local v11    # "isAssistDataAllowed":Z
    :catch_155
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto/16 :goto_28
.end method

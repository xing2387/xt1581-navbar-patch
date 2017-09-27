.class final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field canceled:Z

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I

.field private whitelistDuration:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/PendingIntentRecord;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .registers 6
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    .line 197
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    .line 198
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 199
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 200
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 196
    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .registers 5

    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 373
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 374
    .local v0, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v0, v1, :cond_1f

    .line 375
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_24

    :cond_1f
    monitor-exit v2

    .line 371
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 370
    return-void

    .line 371
    .end local v0    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :catchall_24
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 381
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 382
    const-string/jumbo v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_66

    .line 386
    :cond_49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 387
    const-string/jumbo v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    :cond_66
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_8f

    .line 390
    :cond_72
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 391
    const-string/jumbo v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    :cond_8f
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a9

    .line 394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    :cond_a9
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_b1

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_ca

    .line 398
    :cond_b1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 399
    const-string/jumbo v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 401
    :cond_ca
    iget-wide v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e3

    .line 402
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v0, "whitelistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-wide v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 405
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 380
    :cond_e3
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 361
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_15

    .line 362
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 363
    const/16 v2, 0x17

    .line 362
    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_19

    .line 366
    :cond_15
    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    .line 359
    return-void

    .line 365
    :catchall_19
    move-exception v0

    .line 366
    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    .line 365
    throw v0
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;

    .prologue
    .line 211
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v11, p6

    .line 210
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    .line 209
    return-void
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I
    .registers 50
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "flagsMask"    # I
    .param p10, "flagsValues"    # I
    .param p11, "options"    # Landroid/os/Bundle;
    .param p12, "container"    # Landroid/app/IActivityContainer;

    .prologue
    .line 223
    if-eqz p2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setDefusable(Z)V

    .line 224
    :cond_8
    if-eqz p11, :cond_10

    const/4 v2, 0x1

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 226
    :cond_10
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v2, :cond_48

    .line 234
    :cond_20
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v36, v0

    monitor-enter v36

    :try_start_27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 235
    move-object/from16 v0, p12

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v24, v0

    .line 236
    .local v24, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v24, :cond_60

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_60

    .line 237
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 238
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_12e

    .line 237
    if-eq v2, v3, :cond_60

    .line 240
    const/4 v2, -0x6

    monitor-exit v36

    .line 234
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 240
    return v2

    .line 230
    .end local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 231
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    .line 230
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistAppForPowerSave(IIIJ)V

    goto :goto_20

    .line 242
    .restart local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_60
    :try_start_60
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v2, :cond_2b9

    .line 243
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_85

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 246
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 249
    :cond_85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_127

    .line 250
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 252
    .local v13, "finalIntent":Landroid/content/Intent;
    :goto_98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_134

    const/16 v29, 0x1

    .line 253
    .local v29, "immutable":Z
    :goto_a5
    if-nez v29, :cond_141

    .line 254
    if-eqz p2, :cond_138

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v25

    .line 256
    .local v25, "changes":I
    and-int/lit8 v2, v25, 0x2

    if-nez v2, :cond_c1

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0

    .line 262
    .end local v25    # "changes":I
    :cond_c1
    :goto_c1
    move/from16 v0, p9

    and-int/lit16 v0, v0, -0xc4

    move/from16 p9, v0

    .line 263
    and-int p10, p10, p9

    .line 264
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move/from16 v0, p9

    not-int v3, v0

    and-int/2addr v2, v3

    or-int v2, v2, p10

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    :goto_d6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    .line 271
    .local v32, "origId":J
    if-eqz p4, :cond_14a

    const/16 v34, 0x1

    .line 272
    .local v34, "sendFinish":Z
    :goto_de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v9, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 273
    .local v9, "userId":I
    const/4 v2, -0x2

    if-ne v9, v2, :cond_f1

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    move-result v9

    .line 276
    :cond_f1
    const/16 v31, 0x0

    .line 277
    .local v31, "res":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_f9
    .catchall {:try_start_60 .. :try_end_f9} :catchall_12e

    packed-switch v2, :pswitch_data_2c2

    .line 342
    :cond_fc
    :goto_fc
    if-eqz v34, :cond_11f

    const/4 v2, -0x6

    move/from16 v0, v31

    if-eq v0, v2, :cond_11f

    .line 344
    :try_start_103
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move/from16 v21, v0

    .line 344
    const/16 v16, 0x0

    .line 345
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, p4

    .line 344
    invoke-interface/range {v14 .. v21}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_11f} :catch_2bf
    .catchall {:try_start_103 .. :try_end_11f} :catchall_12e

    .line 350
    :cond_11f
    :goto_11f
    :try_start_11f
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_12e

    monitor-exit v36

    .line 234
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 352
    return v31

    .line 250
    .end local v9    # "userId":I
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .end local v29    # "immutable":Z
    .end local v31    # "res":I
    .end local v32    # "origId":J
    .end local v34    # "sendFinish":Z
    :cond_127
    :try_start_127
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V
    :try_end_12c
    .catchall {:try_start_127 .. :try_end_12c} :catchall_12e

    goto/16 :goto_98

    .line 234
    .end local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :catchall_12e
    move-exception v2

    monitor-exit v36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 252
    .restart local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_134
    const/16 v29, 0x0

    goto/16 :goto_a5

    .line 260
    .restart local v29    # "immutable":Z
    :cond_138
    :try_start_138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0

    goto :goto_c1

    .line 266
    :cond_141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0

    goto :goto_d6

    .line 271
    .restart local v32    # "origId":J
    :cond_14a
    const/16 v34, 0x0

    .restart local v34    # "sendFinish":Z
    goto :goto_de

    .line 279
    .restart local v9    # "userId":I
    .restart local v31    # "res":I
    :pswitch_14d
    if-nez p11, :cond_1d5

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    move-object/from16 p11, v0
    :try_end_157
    .catchall {:try_start_138 .. :try_end_157} :catchall_12e

    .line 287
    :cond_157
    :goto_157
    :try_start_157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_1f5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1f5

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v2, v2

    new-array v5, v2, [Landroid/content/Intent;

    .line 289
    .local v5, "allIntents":[Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v2, v2

    new-array v6, v2, [Ljava/lang/String;

    .line 290
    .local v6, "allResolvedTypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    .line 290
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v2, :cond_1a7

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v3, v3

    .line 293
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v4, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    :cond_1a7
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    aput-object v13, v5, v2

    .line 297
    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aput-object p3, v6, v2

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object/from16 v7, p6

    move-object/from16 v8, p11

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    :try_end_1c6
    .catch Ljava/lang/RuntimeException; {:try_start_157 .. :try_end_1c6} :catch_1c8
    .catchall {:try_start_157 .. :try_end_1c6} :catchall_12e

    goto/16 :goto_fc

    .line 305
    .end local v5    # "allIntents":[Landroid/content/Intent;
    .end local v6    # "allResolvedTypes":[Ljava/lang/String;
    :catch_1c8
    move-exception v28

    .line 306
    .local v28, "e":Ljava/lang/RuntimeException;
    :try_start_1c9
    sget-object v2, Lcom/android/server/am/PendingIntentRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to send startActivity intent"

    move-object/from16 v0, v28

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_fc

    .line 281
    .end local v28    # "e":Ljava/lang/RuntimeException;
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_157

    .line 282
    new-instance v30, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 283
    .local v30, "opts":Landroid/os/Bundle;
    move-object/from16 v0, v30

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1f1
    .catchall {:try_start_1c9 .. :try_end_1f1} :catchall_12e

    .line 284
    move-object/from16 p11, v30

    goto/16 :goto_157

    .line 301
    .end local v30    # "opts":Landroid/os/Bundle;
    :cond_1f5
    :try_start_1f5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v12, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 302
    const/16 v18, 0x0

    .line 303
    const/16 v22, 0x0

    move-object/from16 v14, p3

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move/from16 v17, p8

    move-object/from16 v19, p11

    move/from16 v20, v9

    move-object/from16 v21, p12

    .line 301
    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_218
    .catch Ljava/lang/RuntimeException; {:try_start_1f5 .. :try_end_218} :catch_1c8
    .catchall {:try_start_1f5 .. :try_end_218} :catchall_12e

    goto/16 :goto_fc

    .line 310
    :pswitch_21a
    :try_start_21a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_fc

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move/from16 v18, v0

    .line 311
    const/4 v15, -0x1

    move/from16 v19, p1

    move-object/from16 v20, v13

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_250
    .catchall {:try_start_21a .. :try_end_250} :catchall_12e

    goto/16 :goto_fc

    .line 319
    :pswitch_252
    :try_start_252
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v11, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 321
    if-eqz p4, :cond_280

    const/16 v21, 0x1

    .line 320
    :goto_264
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 322
    const/16 v22, 0x0

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p1

    move-object/from16 v19, p5

    move-object/from16 v20, p11

    move/from16 v23, v9

    .line 319
    invoke-virtual/range {v10 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I
    :try_end_279
    .catch Ljava/lang/RuntimeException; {:try_start_252 .. :try_end_279} :catch_283
    .catchall {:try_start_252 .. :try_end_279} :catchall_12e

    move-result v35

    .line 323
    .local v35, "sent":I
    if-nez v35, :cond_fc

    .line 324
    const/16 v34, 0x0

    goto/16 :goto_fc

    .line 321
    .end local v35    # "sent":I
    :cond_280
    const/16 v21, 0x0

    goto :goto_264

    .line 326
    :catch_283
    move-exception v28

    .line 327
    .restart local v28    # "e":Ljava/lang/RuntimeException;
    :try_start_284
    sget-object v2, Lcom/android/server/am/PendingIntentRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to send startActivity intent"

    move-object/from16 v0, v28

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28e
    .catchall {:try_start_284 .. :try_end_28e} :catchall_12e

    goto/16 :goto_fc

    .line 332
    .end local v28    # "e":Ljava/lang/RuntimeException;
    :pswitch_290
    :try_start_290
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v15, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object/from16 v14, p3

    move/from16 v16, v9

    .line 332
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    :try_end_2a5
    .catch Ljava/lang/RuntimeException; {:try_start_290 .. :try_end_2a5} :catch_2a7
    .catch Landroid/os/TransactionTooLargeException; {:try_start_290 .. :try_end_2a5} :catch_2b4
    .catchall {:try_start_290 .. :try_end_2a5} :catchall_12e

    goto/16 :goto_fc

    .line 334
    :catch_2a7
    move-exception v28

    .line 335
    .restart local v28    # "e":Ljava/lang/RuntimeException;
    :try_start_2a8
    sget-object v2, Lcom/android/server/am/PendingIntentRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to send startService intent"

    move-object/from16 v0, v28

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b2
    .catchall {:try_start_2a8 .. :try_end_2b2} :catchall_12e

    goto/16 :goto_fc

    .line 336
    .end local v28    # "e":Ljava/lang/RuntimeException;
    :catch_2b4
    move-exception v27

    .line 337
    .local v27, "e":Landroid/os/TransactionTooLargeException;
    const/16 v31, -0x6

    goto/16 :goto_fc

    .end local v9    # "userId":I
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .end local v27    # "e":Landroid/os/TransactionTooLargeException;
    .end local v29    # "immutable":Z
    .end local v31    # "res":I
    .end local v32    # "origId":J
    .end local v34    # "sendFinish":Z
    :cond_2b9
    monitor-exit v36

    .line 234
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 355
    const/4 v2, -0x6

    return v2

    .line 346
    .restart local v9    # "userId":I
    .restart local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v29    # "immutable":Z
    .restart local v31    # "res":I
    .restart local v32    # "origId":J
    .restart local v34    # "sendFinish":Z
    :catch_2bf
    move-exception v26

    .local v26, "e":Landroid/os/RemoteException;
    goto/16 :goto_11f

    .line 277
    :pswitch_data_2c2
    .packed-switch 0x1
        :pswitch_252
        :pswitch_14d
        :pswitch_21a
        :pswitch_290
    .end packed-switch
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 20
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;

    .prologue
    .line 217
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v11, p6

    .line 216
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    move-result v0

    return v0
.end method

.method setWhitelistDuration(J)V
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v2, 0x20

    .line 410
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 411
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1

    .line 413
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 414
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-wide v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_50

    .line 421
    const-string/jumbo v1, " (whitelist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-wide v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:J

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 423
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_50
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

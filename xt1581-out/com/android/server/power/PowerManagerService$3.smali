.class Lcom/android/server/power/PowerManagerService$3;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 4132
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 4134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v14}, Lcom/android/server/power/PowerManagerService;->-get19(Lcom/android/server/power/PowerManagerService;)I

    move-result v14

    if-nez v14, :cond_195

    .line 4135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 4137
    .local v10, "now":J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4139
    .local v9, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v14}, Lcom/android/server/power/PowerManagerService;->-get9(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 4140
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v14}, Lcom/android/server/power/PowerManagerService;->-get18(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "wl$iterator":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_160

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4142
    .local v12, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v14, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v16, 0xffff

    and-int v14, v14, v16

    .line 4143
    const/16 v16, 0x1

    .line 4142
    move/from16 v0, v16

    if-ne v14, v0, :cond_28

    .line 4145
    const-wide/16 v2, 0x0

    .line 4146
    .local v2, "adj":J
    iget-wide v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v14}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v18

    cmp-long v14, v16, v18

    if-gez v14, :cond_158

    .line 4147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v14}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v16

    sub-long v2, v10, v16

    .line 4151
    :goto_5d
    iget-wide v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mDurationInSleep:J

    move-wide/from16 v16, v0

    add-long v4, v16, v2

    .line 4154
    .local v4, "duration":J
    const-wide/32 v16, 0x36ee80

    cmp-long v14, v4, v16

    if-lez v14, :cond_28

    .line 4155
    const-string/jumbo v14, "PowerManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Suspicious wakelock held "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4156
    const-string/jumbo v17, "ms when sleep: lock="

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4156
    iget-object v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v17

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4157
    const-string/jumbo v17, ", flags=0x"

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4157
    iget v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4158
    const-string/jumbo v17, ", tag="

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4158
    iget-object v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4158
    const-string/jumbo v17, ", ws="

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4158
    iget-object v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v17, v0

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4159
    const-string/jumbo v17, ", uid="

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4159
    iget v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move/from16 v17, v0

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4159
    const-string/jumbo v17, ", pid="

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4159
    iget v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move/from16 v17, v0

    .line 4155
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v14, "com.motorola.intent.action.SUSPICIOUS_WAKELOCK"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4162
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v14, "LOCK"

    iget-object v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4163
    const-string/jumbo v14, "PID"

    iget v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4164
    const-string/jumbo v14, "UID"

    iget v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4165
    const-string/jumbo v14, "TAG"

    iget-object v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4166
    const-string/jumbo v14, "TIME"

    iget-wide v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4167
    const-string/jumbo v14, "FLAGS"

    iget v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4168
    const-string/jumbo v14, "SOURCE"

    iget-object v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4169
    const-string/jumbo v14, "DURATION"

    invoke-virtual {v8, v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4170
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_153
    .catchall {:try_start_1c .. :try_end_153} :catchall_155

    goto/16 :goto_28

    .line 4139
    .end local v2    # "adj":J
    .end local v4    # "duration":J
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v12    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v13    # "wl$iterator":Ljava/util/Iterator;
    :catchall_155
    move-exception v14

    monitor-exit v15

    throw v14

    .line 4149
    .restart local v2    # "adj":J
    .restart local v12    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v13    # "wl$iterator":Ljava/util/Iterator;
    :cond_158
    :try_start_158
    iget-wide v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mTime:J

    move-wide/from16 v16, v0
    :try_end_15c
    .catchall {:try_start_158 .. :try_end_15c} :catchall_155

    sub-long v2, v10, v16

    goto/16 :goto_5d

    .end local v2    # "adj":J
    .end local v12    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_160
    monitor-exit v15

    .line 4176
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$iterator":Ljava/util/Iterator;
    :goto_165
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 4177
    .local v6, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v14}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v14

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v6, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_165

    .line 4181
    .end local v6    # "i":Landroid/content/Intent;
    :cond_17f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v14}, Lcom/android/server/power/PowerManagerService;->-get6(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v15}, Lcom/android/server/power/PowerManagerService;->-get17(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v15

    const-wide/32 v16, 0x493e0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4133
    .end local v7    # "i$iterator":Ljava/util/Iterator;
    .end local v9    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v10    # "now":J
    .end local v13    # "wl$iterator":Ljava/util/Iterator;
    :cond_195
    return-void
.end method

.class Lcom/android/server/UiModeManagerService$5;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .registers 8
    .param p1, "flags"    # I

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$5;->isUiModeLocked()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 232
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "disableCarMode while UI mode is locked"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 235
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 237
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_35

    .line 238
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 239
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_2d

    .line 240
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_32

    :cond_2d
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_35

    .line 244
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    return-void

    .line 237
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v3

    throw v2
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_35

    .line 243
    :catchall_35
    move-exception v2

    .line 244
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 243
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 321
    const-string/jumbo v1, ", uid="

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    return-void

    .line 325
    :cond_3a
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 315
    return-void
.end method

.method public enableCarMode(I)V
    .registers 7
    .param p1, "flags"    # I

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$5;->isUiModeLocked()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 213
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "enableCarMode while UI mode is locked"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 216
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 218
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_34

    .line 219
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 220
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_2c

    .line 221
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_31

    :cond_2c
    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_34

    .line 225
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    return-void

    .line 218
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3

    throw v2
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_34

    .line 224
    :catchall_34
    move-exception v2

    .line 225
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw v2
.end method

.method public getCurrentModeType()I
    .registers 5

    .prologue
    .line 250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 252
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_17

    .line 253
    :try_start_9
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget v2, v2, Lcom/android/server/UiModeManagerService;->mCurUiMode:I
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    and-int/lit8 v2, v2, 0xf

    :try_start_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_17

    .line 256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    return v2

    .line 252
    :catchall_14
    move-exception v2

    :try_start_15
    monitor-exit v3

    throw v2
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_17

    .line 255
    :catchall_17
    move-exception v2

    .line 256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    throw v2
.end method

.method public getNightMode()I
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_5
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-get1(Lcom/android/server/UiModeManagerService;)I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit v1

    return v0

    .line 295
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isNightModeLocked()Z
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_5
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-get2(Lcom/android/server/UiModeManagerService;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit v1

    return v0

    .line 309
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUiModeLocked()Z
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_5
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-get3(Lcom/android/server/UiModeManagerService;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit v1

    return v0

    .line 302
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setNightMode(I)V
    .registers 8
    .param p1, "mode"    # I

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$5;->isNightModeLocked()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 263
    const-string/jumbo v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    .line 262
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_20

    .line 265
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    .line 266
    const-string/jumbo v3, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    .line 265
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 269
    :cond_20
    packed-switch p1, :pswitch_data_78

    .line 275
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :pswitch_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 280
    .local v0, "ident":J
    :try_start_41
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_72

    .line 281
    :try_start_46
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-get1(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    if-eq v2, p1, :cond_6a

    .line 282
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 283
    const-string/jumbo v4, "ui_night_mode"

    .line 282
    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p1}, Lcom/android/server/UiModeManagerService;->-set1(Lcom/android/server/UiModeManagerService;I)I

    .line 285
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_6a
    .catchall {:try_start_46 .. :try_end_6a} :catchall_6f

    :cond_6a
    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_72

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    return-void

    .line 280
    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v3

    throw v2
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_72

    .line 288
    :catchall_72
    move-exception v2

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw v2

    .line 269
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

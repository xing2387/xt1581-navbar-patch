.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field flags:I

.field start:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 385
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 386
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 384
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 391
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 392
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 393
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 394
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 8
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 412
    .local v1, "newStart":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 413
    .local v0, "index":I
    if-gez v0, :cond_f

    .line 414
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 416
    :cond_f
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 420
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_21

    .line 421
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 422
    const/4 v1, 0x1

    .line 424
    :cond_21
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2d

    .line 425
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 427
    :cond_2d
    iget v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 432
    return v1
.end method

.method canHold(JJ)Z
    .registers 10
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    const/4 v0, 0x0

    .line 406
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v1, v2, p1

    if-ltz v1, :cond_e

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v1, v2, p3

    if-gtz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method hasPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 581
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 582
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1c

    .line 583
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 584
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 585
    const/4 v3, 0x1

    return v3

    .line 582
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 588
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1c
    const/4 v3, 0x0

    return v3
.end method

.method hasWakeups()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 592
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 593
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1d

    .line 594
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 596
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1a

    .line 597
    const/4 v3, 0x1

    return v3

    .line 593
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 600
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1d
    return v4
.end method

.method remove(I)Z
    .registers 12
    .param p1, "userHandle"    # I

    .prologue
    .line 551
    const/4 v1, 0x0

    .line 552
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 553
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 554
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_9
    :goto_9
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 555
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 556
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_32

    .line 557
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 558
    const/4 v1, 0x1

    .line 559
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_9

    .line 560
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->-set1(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_9

    .line 563
    :cond_32
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_3a

    .line 564
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 566
    :cond_3a
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_42

    .line 567
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 569
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 572
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_45
    if-eqz v1, :cond_4b

    .line 574
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 575
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 577
    :cond_4b
    return v1
.end method

.method remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .registers 13
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .prologue
    .line 436
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 441
    const/4 v8, 0x0

    return v8

    .line 443
    :cond_6
    const/4 v1, 0x0

    .line 444
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 445
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 446
    .local v4, "newEnd":J
    const/4 v3, 0x0

    .line 447
    .local v3, "newFlags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_10
    :goto_10
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4d

    .line 448
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 449
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 450
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 451
    const/4 v1, 0x1

    .line 452
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_10

    .line 453
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->-set1(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_10

    .line 456
    :cond_37
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_3f

    .line 457
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 459
    :cond_3f
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_47

    .line 460
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 462
    :cond_47
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v3, v8

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 466
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4d
    if-eqz v1, :cond_55

    .line 468
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 469
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 470
    iput v3, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 472
    :cond_55
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 476
    if-nez p1, :cond_4

    .line 481
    return v8

    .line 483
    :cond_4
    const/4 v1, 0x0

    .line 484
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 485
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 486
    .local v4, "newEnd":J
    const/4 v3, 0x0

    .line 487
    .local v3, "newFlags":I
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_4c

    .line 488
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 489
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 490
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 491
    const/4 v1, 0x1

    .line 492
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_35

    .line 493
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->-set1(Lcom/android/server/AlarmManagerService;Z)Z

    .line 487
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 496
    :cond_38
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_40

    .line 497
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 499
    :cond_40
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_48

    .line 500
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 502
    :cond_48
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v3, v8

    goto :goto_35

    .line 505
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4c
    if-eqz v1, :cond_54

    .line 507
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 508
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 509
    iput v3, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 511
    :cond_54
    return v1
.end method

.method removeForStopped(I)Z
    .registers 14
    .param p1, "uid"    # I

    .prologue
    .line 515
    const/4 v1, 0x0

    .line 516
    .local v1, "didRemove":Z
    const-wide/16 v8, 0x0

    .line 517
    .local v8, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 518
    .local v4, "newEnd":J
    const/4 v6, 0x0

    .line 519
    .local v6, "newFlags":I
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_53

    .line 520
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 522
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_1b
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v7, p1, :cond_3f

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 523
    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .line 522
    invoke-interface {v7, p1, v10}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    move-result v7

    .line 523
    const/4 v10, 0x2

    .line 522
    if-ne v7, v10, :cond_3f

    .line 524
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 525
    const/4 v1, 0x1

    .line 526
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v7, :cond_3c

    .line 527
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/android/server/AlarmManagerService;->-set1(Lcom/android/server/AlarmManagerService;Z)Z

    .line 519
    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 530
    :cond_3f
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v10, v8

    if-lez v7, :cond_47

    .line 531
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 533
    :cond_47
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v7, v10, v4

    if-gez v7, :cond_4f

    .line 534
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 536
    :cond_4f
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_51} :catch_5c

    or-int/2addr v6, v7

    goto :goto_3c

    .line 541
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_53
    if-eqz v1, :cond_5b

    .line 543
    iput-wide v8, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 544
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 545
    iput v6, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 547
    :cond_5b
    return v1

    .line 538
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :catch_5c
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_3c
.end method

.method size()I
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 606
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string/jumbo v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    const-string/jumbo v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 609
    const-string/jumbo v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 610
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    if-eqz v1, :cond_4e

    .line 611
    const-string/jumbo v1, " flgs=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_4e
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

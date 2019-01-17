.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 673
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 674
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 675
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get4(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 676
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get4(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 672
    return-void
.end method

.method private delay(J)V
    .registers 12
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 680
    cmp-long v3, p1, v6

    if-lez v3, :cond_13

    .line 681
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v0, p1, v4

    .line 684
    .local v0, "bedtime":J
    :goto_c
    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_14

    .line 688
    :goto_f
    iget-boolean v3, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v3, :cond_16

    .line 679
    .end local v0    # "bedtime":J
    :cond_13
    return-void

    .line 686
    .restart local v0    # "bedtime":J
    :catch_14
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_f

    .line 691
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v0, v4

    .line 692
    cmp-long v3, p1, v6

    if-lez v3, :cond_13

    goto :goto_c
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 697
    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 698
    monitor-enter p0

    .line 699
    :try_start_5
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 700
    .local v5, "pattern":[J
    array-length v4, v5

    .line 701
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    .line 702
    .local v6, "repeat":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    .line 703
    .local v7, "uid":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    .line 704
    .local v8, "usageHint":I
    const/4 v2, 0x0

    .line 705
    .local v2, "index":I
    const-wide/16 v0, 0x0

    .local v0, "duration":J
    move v3, v2

    .line 707
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_22
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v9, :cond_95

    .line 708
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Z

    move-result v9

    if-eqz v9, :cond_63

    invoke-static {v5}, Lcom/motorola/server/Haptic;->play([J)Z

    move-result v9

    if-eqz v9, :cond_63

    move v2, v3

    .line 737
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_35
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-get4(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_8f

    monitor-exit p0

    .line 739
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v10

    monitor-enter v10

    .line 740
    :try_start_46
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v9, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v9, p0, :cond_51

    .line 741
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 743
    :cond_51
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v9, :cond_61

    .line 746
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v11, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9, v11}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 747
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;)V
    :try_end_61
    .catchall {:try_start_46 .. :try_end_61} :catchall_92

    :cond_61
    monitor-exit v10

    .line 696
    return-void

    .line 711
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_63
    if-ge v3, v4, :cond_6b

    .line 712
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :try_start_67
    aget-wide v10, v5, v3

    add-long/2addr v0, v10

    move v3, v2

    .line 716
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_6b
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 717
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v9, :cond_74

    move v2, v3

    .line 718
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_35

    .line 721
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_74
    if-ge v3, v4, :cond_87

    .line 724
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-wide v0, v5, v3

    .line 725
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_85

    .line 726
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9, v0, v1, v7, v8}, Lcom/android/server/VibratorService;->-wrap1(Lcom/android/server/VibratorService;JII)V
    :try_end_85
    .catchall {:try_start_67 .. :try_end_85} :catchall_8f

    :cond_85
    :goto_85
    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_22

    .line 729
    :cond_87
    if-gez v6, :cond_8b

    move v2, v3

    .line 730
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_35

    .line 732
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_8b
    move v2, v6

    .line 733
    .end local v3    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v0, 0x0

    goto :goto_85

    .line 698
    .end local v0    # "duration":J
    .end local v2    # "index":I
    .end local v4    # "len":I
    .end local v5    # "pattern":[J
    .end local v6    # "repeat":I
    .end local v7    # "uid":I
    .end local v8    # "usageHint":I
    :catchall_8f
    move-exception v9

    monitor-exit p0

    throw v9

    .line 739
    .restart local v0    # "duration":J
    .restart local v2    # "index":I
    .restart local v4    # "len":I
    .restart local v5    # "pattern":[J
    .restart local v6    # "repeat":I
    .restart local v7    # "uid":I
    .restart local v8    # "usageHint":I
    :catchall_92
    move-exception v9

    monitor-exit v10

    throw v9

    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_95
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_35
.end method

.class Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;
    .param p2, "val$endTime"    # J
    .param p4, "val$timeout"    # I
    .param p5, "val$done"    # [Z

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 567
    const-string/jumbo v10, "nfc"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v5

    .line 569
    .local v5, "nfc":Landroid/nfc/INfcAdapter;
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 572
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v10, "bluetooth_manager"

    .line 571
    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 575
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v5, :cond_f7

    .line 576
    :try_start_23
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_fa

    const/4 v6, 0x1

    .line 577
    .local v6, "nfcOff":Z
    :goto_2b
    if-nez v6, :cond_3a

    .line 578
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Turning off NFC..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3a} :catch_fd

    .line 587
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_10a

    .line 588
    :try_start_3c
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getState()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_10d

    const/4 v1, 0x1

    .line 589
    .local v1, "bluetoothOff":Z
    :goto_45
    if-nez v1, :cond_54

    .line 590
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Disabling Bluetooth..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_54} :catch_110

    .line 599
    :cond_54
    :goto_54
    if-eqz v7, :cond_11d

    :try_start_56
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v10

    if-eqz v10, :cond_11d

    const/4 v8, 0x0

    .line 600
    .local v8, "radioOff":Z
    :goto_5d
    if-nez v8, :cond_6b

    .line 601
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Turning off cellular radios..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_6b} :catch_120

    .line 609
    :cond_6b
    :goto_6b
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 612
    .local v2, "delay":J
    :goto_7c
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_f6

    .line 613
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 614
    iget v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    int-to-long v10, v10

    sub-long/2addr v10, v2

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    .line 615
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    .line 614
    mul-double/2addr v10, v12

    .line 615
    iget v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    int-to-double v12, v12

    .line 614
    div-double/2addr v10, v12

    double-to-int v9, v10

    .line 616
    .local v9, "status":I
    add-int/lit8 v9, v9, 0x6

    .line 617
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Lcom/android/server/power/ShutdownThread;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/android/server/power/ShutdownThread;->-wrap2(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 620
    .end local v9    # "status":I
    :cond_a2
    if-nez v1, :cond_b8

    .line 622
    :try_start_a4
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getState()I
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a7} :catch_130

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_12d

    const/4 v1, 0x1

    .line 627
    :goto_ad
    if-eqz v1, :cond_b8

    .line 628
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Bluetooth turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_b8
    if-nez v8, :cond_cc

    .line 633
    :try_start_ba
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_bd} :catch_13f

    move-result v10

    if-eqz v10, :cond_13d

    const/4 v8, 0x0

    .line 638
    :goto_c1
    if-eqz v8, :cond_cc

    .line 639
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Radio turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_cc
    if-nez v6, :cond_e1

    .line 644
    :try_start_ce
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_d1} :catch_14e

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14c

    const/4 v6, 0x1

    .line 649
    :goto_d6
    if-eqz v6, :cond_e1

    .line 650
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "NFC turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_e1
    if-eqz v8, :cond_15b

    if-eqz v1, :cond_15b

    if-eqz v6, :cond_15b

    .line 655
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-boolean v11, v10, v12

    .line 561
    :cond_f6
    return-void

    .line 575
    .end local v1    # "bluetoothOff":Z
    .end local v2    # "delay":J
    .end local v6    # "nfcOff":Z
    .end local v8    # "radioOff":Z
    :cond_f7
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto/16 :goto_2b

    .line 576
    .end local v6    # "nfcOff":Z
    :cond_fa
    const/4 v6, 0x0

    .restart local v6    # "nfcOff":Z
    goto/16 :goto_2b

    .line 581
    .end local v6    # "nfcOff":Z
    :catch_fd
    move-exception v4

    .line 582
    .local v4, "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto/16 :goto_3a

    .line 587
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_10a
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_45

    .line 588
    .end local v1    # "bluetoothOff":Z
    :cond_10d
    const/4 v1, 0x0

    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_45

    .line 593
    .end local v1    # "bluetoothOff":Z
    :catch_110
    move-exception v4

    .line 594
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_54

    .line 599
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_11d
    const/4 v8, 0x1

    .restart local v8    # "radioOff":Z
    goto/16 :goto_5d

    .line 604
    .end local v8    # "radioOff":Z
    :catch_120
    move-exception v4

    .line 605
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    const/4 v8, 0x1

    .restart local v8    # "radioOff":Z
    goto/16 :goto_6b

    .line 622
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "delay":J
    :cond_12d
    const/4 v1, 0x0

    goto/16 :goto_ad

    .line 623
    :catch_130
    move-exception v4

    .line 624
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    const/4 v1, 0x1

    goto/16 :goto_ad

    .line 633
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_13d
    const/4 v8, 0x1

    goto :goto_c1

    .line 634
    :catch_13f
    move-exception v4

    .line 635
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    const/4 v8, 0x1

    goto/16 :goto_c1

    .line 644
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_14c
    const/4 v6, 0x0

    goto :goto_d6

    .line 645
    :catch_14e
    move-exception v4

    .line 646
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    const/4 v6, 0x1

    goto/16 :goto_d6

    .line 659
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_15b
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 661
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    goto/16 :goto_7c
.end method

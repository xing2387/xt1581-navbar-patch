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
    .line 645
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
    .line 652
    const-string/jumbo v10, "nfc"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v5

    .line 654
    .local v5, "nfc":Landroid/nfc/INfcAdapter;
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 657
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v10, "bluetooth_manager"

    .line 656
    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 660
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v5, :cond_101

    .line 661
    :try_start_23
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_104

    const/4 v6, 0x1

    .line 662
    .local v6, "nfcOff":Z
    :goto_2b
    if-nez v6, :cond_3a

    .line 663
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Turning off NFC..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3a} :catch_107

    .line 672
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_114

    .line 673
    :try_start_3c
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getState()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_117

    const/4 v1, 0x1

    .line 674
    .local v1, "bluetoothOff":Z
    :goto_45
    if-nez v1, :cond_5e

    .line 675
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Disabling Bluetooth..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v10}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v0, v10, v11}, Landroid/bluetooth/IBluetoothManager;->disable(Ljava/lang/String;Z)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_5e} :catch_11a

    .line 684
    :cond_5e
    :goto_5e
    if-eqz v7, :cond_127

    :try_start_60
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v10

    if-eqz v10, :cond_127

    const/4 v8, 0x0

    .line 685
    .local v8, "radioOff":Z
    :goto_67
    if-nez v8, :cond_75

    .line 686
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Turning off cellular radios..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_75} :catch_12a

    .line 694
    :cond_75
    :goto_75
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 697
    .local v2, "delay":J
    :goto_86
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_100

    .line 698
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 699
    iget v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    int-to-long v10, v10

    sub-long/2addr v10, v2

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    .line 700
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    .line 699
    mul-double/2addr v10, v12

    .line 700
    iget v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    int-to-double v12, v12

    .line 699
    div-double/2addr v10, v12

    double-to-int v9, v10

    .line 701
    .local v9, "status":I
    add-int/lit8 v9, v9, 0x6

    .line 702
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get4()Lcom/android/server/power/ShutdownThread;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/android/server/power/ShutdownThread;->-wrap2(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 705
    .end local v9    # "status":I
    :cond_ac
    if-nez v1, :cond_c2

    .line 707
    :try_start_ae
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getState()I
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_b1} :catch_13a

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_137

    const/4 v1, 0x1

    .line 712
    :goto_b7
    if-eqz v1, :cond_c2

    .line 713
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Bluetooth turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_c2
    if-nez v8, :cond_d6

    .line 718
    :try_start_c4
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c7} :catch_149

    move-result v10

    if-eqz v10, :cond_147

    const/4 v8, 0x0

    .line 723
    :goto_cb
    if-eqz v8, :cond_d6

    .line 724
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Radio turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_d6
    if-nez v6, :cond_eb

    .line 729
    :try_start_d8
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_db} :catch_158

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_156

    const/4 v6, 0x1

    .line 734
    :goto_e0
    if-eqz v6, :cond_eb

    .line 735
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "NFC turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_eb
    if-eqz v8, :cond_165

    if-eqz v1, :cond_165

    if-eqz v6, :cond_165

    .line 740
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-boolean v11, v10, v12

    .line 646
    :cond_100
    return-void

    .line 660
    .end local v1    # "bluetoothOff":Z
    .end local v2    # "delay":J
    .end local v6    # "nfcOff":Z
    .end local v8    # "radioOff":Z
    :cond_101
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto/16 :goto_2b

    .line 661
    .end local v6    # "nfcOff":Z
    :cond_104
    const/4 v6, 0x0

    .restart local v6    # "nfcOff":Z
    goto/16 :goto_2b

    .line 666
    .end local v6    # "nfcOff":Z
    :catch_107
    move-exception v4

    .line 667
    .local v4, "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto/16 :goto_3a

    .line 672
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_114
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_45

    .line 673
    .end local v1    # "bluetoothOff":Z
    :cond_117
    const/4 v1, 0x0

    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_45

    .line 678
    .end local v1    # "bluetoothOff":Z
    :catch_11a
    move-exception v4

    .line 679
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_5e

    .line 684
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_127
    const/4 v8, 0x1

    .restart local v8    # "radioOff":Z
    goto/16 :goto_67

    .line 689
    .end local v8    # "radioOff":Z
    :catch_12a
    move-exception v4

    .line 690
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    const/4 v8, 0x1

    .restart local v8    # "radioOff":Z
    goto/16 :goto_75

    .line 707
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "delay":J
    :cond_137
    const/4 v1, 0x0

    goto/16 :goto_b7

    .line 708
    :catch_13a
    move-exception v4

    .line 709
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    const/4 v1, 0x1

    goto/16 :goto_b7

    .line 718
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_147
    const/4 v8, 0x1

    goto :goto_cb

    .line 719
    :catch_149
    move-exception v4

    .line 720
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    const/4 v8, 0x1

    goto/16 :goto_cb

    .line 729
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_156
    const/4 v6, 0x0

    goto :goto_e0

    .line 730
    :catch_158
    move-exception v4

    .line 731
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    const/4 v6, 0x1

    goto/16 :goto_e0

    .line 744
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_165
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 746
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    goto/16 :goto_86
.end method

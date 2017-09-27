.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1839
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1838
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 79
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1844
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_c70

    .line 1843
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1846
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v67

    .line 1847
    .local v67, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    .line 1848
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1847
    move-object/from16 v0, v67

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    goto :goto_7

    .line 1851
    .end local v67    # "resolver":Landroid/content/ContentResolver;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1852
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_36

    monitor-exit v7

    .line 1851
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    :catchall_36
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1856
    :pswitch_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_6d

    .line 1857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v55

    .line 1859
    .local v55, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v55

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1860
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x4e20

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1861
    return-void

    .line 1863
    .end local v55    # "nmsg":Landroid/os/Message;
    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_7

    .line 1866
    :pswitch_7d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .local v44, "i":I
    :goto_91
    if-ltz v44, :cond_da

    .line 1868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/android/server/am/ProcessRecord;

    .line 1869
    .local v64, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v64

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_a5
    .catchall {:try_start_82 .. :try_end_a5} :catchall_d4

    if-eqz v4, :cond_ae

    .line 1871
    :try_start_a7
    move-object/from16 v0, v64

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ae} :catch_b1
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_d4

    .line 1867
    :cond_ae
    :goto_ae
    add-int/lit8 v44, v44, -0x1

    goto :goto_91

    .line 1872
    :catch_b1
    move-exception v40

    .line 1873
    .local v40, "ex":Landroid/os/RemoteException;
    :try_start_b2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to update time zone for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v64

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_b2 .. :try_end_d3} :catchall_d4

    goto :goto_ae

    .line 1866
    .end local v40    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v64    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_d4
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v44    # "i":I
    :cond_da
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 1880
    .end local v44    # "i":I
    :pswitch_e0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_e5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_f4
    if-ltz v44, :cond_13d

    .line 1882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/android/server/am/ProcessRecord;

    .line 1883
    .restart local v64    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v64

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_108
    .catchall {:try_start_e5 .. :try_end_108} :catchall_137

    if-eqz v4, :cond_111

    .line 1885
    :try_start_10a
    move-object/from16 v0, v64

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_111} :catch_114
    .catchall {:try_start_10a .. :try_end_111} :catchall_137

    .line 1881
    :cond_111
    :goto_111
    add-int/lit8 v44, v44, -0x1

    goto :goto_f4

    .line 1886
    :catch_114
    move-exception v40

    .line 1887
    .restart local v40    # "ex":Landroid/os/RemoteException;
    :try_start_115
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to clear dns cache for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v64

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catchall {:try_start_115 .. :try_end_136} :catchall_137

    goto :goto_111

    .line 1880
    .end local v40    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v64    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_137
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v44    # "i":I
    :cond_13d
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 1894
    .end local v44    # "i":I
    :pswitch_143
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/net/ProxyInfo;

    .line 1895
    .local v62, "proxy":Landroid/net/ProxyInfo;
    const-string/jumbo v43, ""

    .line 1896
    .local v43, "host":Ljava/lang/String;
    const-string/jumbo v58, ""

    .line 1897
    .local v58, "port":Ljava/lang/String;
    const-string/jumbo v41, ""

    .line 1898
    .local v41, "exclList":Ljava/lang/String;
    sget-object v57, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1899
    .local v57, "pacFileUrl":Landroid/net/Uri;
    if-eqz v62, :cond_16c

    .line 1900
    invoke-virtual/range {v62 .. v62}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v43

    .line 1901
    invoke-virtual/range {v62 .. v62}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v58

    .line 1902
    invoke-virtual/range {v62 .. v62}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v41

    .line 1903
    invoke-virtual/range {v62 .. v62}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v57

    .line 1905
    :cond_16c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_171
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_180
    if-ltz v44, :cond_1d1

    .line 1907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/android/server/am/ProcessRecord;

    .line 1908
    .restart local v64    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v64

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_194
    .catchall {:try_start_171 .. :try_end_194} :catchall_1cb

    if-eqz v4, :cond_1a5

    .line 1910
    :try_start_196
    move-object/from16 v0, v64

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    move-object/from16 v2, v41

    move-object/from16 v3, v57

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1a5
    .catch Landroid/os/RemoteException; {:try_start_196 .. :try_end_1a5} :catch_1a8
    .catchall {:try_start_196 .. :try_end_1a5} :catchall_1cb

    .line 1906
    :cond_1a5
    :goto_1a5
    add-int/lit8 v44, v44, -0x1

    goto :goto_180

    .line 1911
    :catch_1a8
    move-exception v40

    .line 1912
    .restart local v40    # "ex":Landroid/os/RemoteException;
    :try_start_1a9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to update http proxy for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1913
    move-object/from16 v0, v64

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1912
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ca
    .catchall {:try_start_1a9 .. :try_end_1ca} :catchall_1cb

    goto :goto_1a5

    .line 1905
    .end local v40    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v64    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1cb
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v44    # "i":I
    :cond_1d1
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 1920
    .end local v41    # "exclList":Ljava/lang/String;
    .end local v43    # "host":Ljava/lang/String;
    .end local v44    # "i":I
    .end local v57    # "pacFileUrl":Landroid/net/Uri;
    .end local v58    # "port":Ljava/lang/String;
    .end local v62    # "proxy":Landroid/net/ProxyInfo;
    :pswitch_1d7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_208

    .line 1921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x14

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v55

    .line 1923
    .restart local v55    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v55

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1924
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x2710

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1925
    return-void

    .line 1927
    .end local v55    # "nmsg":Landroid/os/Message;
    :cond_208
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/server/am/ProcessRecord;

    .line 1928
    .local v30, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_215
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1929
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap11(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_221
    .catchall {:try_start_215 .. :try_end_221} :catchall_227

    monitor-exit v7

    .line 1928
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_227
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1933
    .end local v30    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_22d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/server/am/ProcessRecord;

    .line 1934
    .restart local v30    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_23a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1935
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap10(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_246
    .catchall {:try_start_23a .. :try_end_246} :catchall_24c

    monitor-exit v7

    .line 1934
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_24c
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1939
    .end local v30    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_252
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_257
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V
    :try_end_264
    .catchall {:try_start_257 .. :try_end_264} :catchall_26a

    monitor-exit v7

    .line 1939
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_26a
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1944
    :pswitch_270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    :try_start_275
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1945
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1946
    .local v6, "appId":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 1947
    .local v12, "userId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/Bundle;

    .line 1948
    .local v31, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1949
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1952
    .local v13, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1953
    const/4 v11, 0x0

    .line 1952
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_2a6
    .catchall {:try_start_275 .. :try_end_2a6} :catchall_2ac

    monitor-exit v15

    .line 1944
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appId":I
    .end local v12    # "userId":I
    .end local v13    # "reason":Ljava/lang/String;
    .end local v31    # "bundle":Landroid/os/Bundle;
    :catchall_2ac
    move-exception v4

    monitor-exit v15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1957
    :pswitch_2b2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    .line 1960
    :pswitch_2bd
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v46

    .line 1961
    .local v46, "inm":Landroid/app/INotificationManager;
    if-nez v46, :cond_2c4

    .line 1962
    return-void

    .line 1965
    :cond_2c4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v68, v0

    check-cast v68, Lcom/android/server/am/ActivityRecord;

    .line 1966
    .local v68, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v68

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v61, v0

    .line 1967
    .local v61, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v61, :cond_2d5

    .line 1968
    return-void

    .line 1972
    :cond_2d5
    :try_start_2d5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v61

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v34

    .line 1973
    .local v34, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1974
    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 1973
    const v8, 0x10403b2

    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v70

    .line 1975
    .local v70, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1976
    const v7, 0x10806c4

    .line 1975
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1977
    const-wide/16 v8, 0x0

    .line 1975
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1978
    const/4 v7, 0x1

    .line 1975
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1980
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1981
    const v8, 0x1060059

    .line 1980
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 1975
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1984
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x10403b3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1975
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1985
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1986
    move-object/from16 v0, v68

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    .line 1987
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v68

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 1985
    const/4 v15, 0x0

    .line 1986
    const/high16 v17, 0x10000000

    const/16 v18, 0x0

    .line 1985
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1975
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_373
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d5 .. :try_end_373} :catch_3a0

    move-result-object v19

    .line 1990
    .local v19, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_375
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 1991
    .local v20, "outId":[I
    const-string/jumbo v15, "android"

    const-string/jumbo v16, "android"

    .line 1993
    move-object/from16 v0, v68

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v21, v0

    .line 1991
    const/16 v17, 0x0

    .line 1992
    const v18, 0x10403b2

    move-object/from16 v14, v46

    .line 1991
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_38f
    .catch Ljava/lang/RuntimeException; {:try_start_375 .. :try_end_38f} :catch_391
    .catch Landroid/os/RemoteException; {:try_start_375 .. :try_end_38f} :catch_c6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_375 .. :try_end_38f} :catch_3a0

    goto/16 :goto_7

    .line 1994
    .end local v20    # "outId":[I
    :catch_391
    move-exception v39

    .line 1995
    .local v39, "e":Ljava/lang/RuntimeException;
    :try_start_392
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    .line 1996
    const-string/jumbo v7, "Error showing notification for heavy-weight app"

    .line 1995
    move-object/from16 v0, v39

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_392 .. :try_end_39e} :catch_3a0

    goto/16 :goto_7

    .line 1999
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v34    # "context":Landroid/content/Context;
    .end local v39    # "e":Ljava/lang/RuntimeException;
    .end local v70    # "text":Ljava/lang/String;
    :catch_3a0
    move-exception v36

    .line 2000
    .local v36, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Unable to create context for heavy notification"

    move-object/from16 v0, v36

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2004
    .end local v36    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v46    # "inm":Landroid/app/INotificationManager;
    .end local v61    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v68    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_3af
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2005
    .local v14, "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_3b6

    .line 2006
    return-void

    .line 2009
    :cond_3b6
    :try_start_3b6
    const-string/jumbo v4, "android"

    .line 2010
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 2009
    const/4 v8, 0x0

    .line 2010
    const v9, 0x10403b2

    .line 2009
    invoke-interface {v14, v4, v8, v9, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_3c4
    .catch Ljava/lang/RuntimeException; {:try_start_3b6 .. :try_end_3c4} :catch_3c6
    .catch Landroid/os/RemoteException; {:try_start_3b6 .. :try_end_3c4} :catch_c69

    goto/16 :goto_7

    .line 2011
    :catch_3c6
    move-exception v39

    .line 2012
    .restart local v39    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    .line 2013
    const-string/jumbo v7, "Error canceling notification for service"

    .line 2012
    move-object/from16 v0, v39

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2018
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v39    # "e":Ljava/lang/RuntimeException;
    :pswitch_3d5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_3da
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 2020
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2021
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v55

    .line 2022
    .restart local v55    # "nmsg":Landroid/os/Message;
    const-wide/32 v8, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3fe
    .catchall {:try_start_3da .. :try_end_3fe} :catchall_404

    monitor-exit v7

    .line 2018
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v55    # "nmsg":Landroid/os/Message;
    :catchall_404
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2026
    :pswitch_40a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/ArrayList;

    .line 2027
    .local v48, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v71, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v71

    move-object/from16 v1, p0

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2032
    .local v71, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 2036
    .end local v48    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v71    # "thread":Ljava/lang/Thread;
    :pswitch_422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_7

    .line 2040
    :pswitch_43b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_7

    .line 2044
    :pswitch_454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_7

    .line 2048
    :pswitch_46d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_490

    const/16 v54, 0x1

    .line 2049
    .local v54, "nextState":Z
    :goto_475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v54

    if-eq v4, v0, :cond_7

    .line 2053
    if-eqz v54, :cond_493

    .line 2054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_7

    .line 2048
    .end local v54    # "nextState":Z
    :cond_490
    const/16 v54, 0x0

    .restart local v54    # "nextState":Z
    goto :goto_475

    .line 2056
    :cond_493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_7

    .line 2062
    .end local v54    # "nextState":Z
    :pswitch_49e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-wrap15(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 2066
    :pswitch_4a7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_4ac
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2067
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V
    :try_end_4bc
    .catchall {:try_start_4ac .. :try_end_4bc} :catchall_4c2

    monitor-exit v7

    .line 2066
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_4c2
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2072
    :pswitch_4c8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_4cd
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4}, Lcom/android/server/am/UserController;->startProfilesLocked()V
    :try_end_4d9
    .catchall {:try_start_4cd .. :try_end_4d9} :catchall_4df

    monitor-exit v7

    .line 2072
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_4df
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2078
    :pswitch_4e5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_4ea
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2079
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_4f9
    if-ltz v44, :cond_54b

    .line 2080
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/android/server/am/ProcessRecord;

    .line 2081
    .restart local v64    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v64

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_50d
    .catchall {:try_start_4ea .. :try_end_50d} :catchall_545

    if-eqz v4, :cond_51d

    .line 2083
    :try_start_50f
    move-object/from16 v0, v64

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_520

    const/4 v4, 0x0

    :goto_51a
    invoke-interface {v8, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_51d
    .catch Landroid/os/RemoteException; {:try_start_50f .. :try_end_51d} :catch_522
    .catchall {:try_start_50f .. :try_end_51d} :catchall_545

    .line 2079
    :cond_51d
    :goto_51d
    add-int/lit8 v44, v44, -0x1

    goto :goto_4f9

    .line 2083
    :cond_520
    const/4 v4, 0x1

    goto :goto_51a

    .line 2084
    :catch_522
    move-exception v40

    .line 2085
    .restart local v40    # "ex":Landroid/os/RemoteException;
    :try_start_523
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to update preferences for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v64

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_544
    .catchall {:try_start_523 .. :try_end_544} :catchall_545

    goto :goto_51d

    .line 2078
    .end local v40    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v64    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_545
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v44    # "i":I
    :cond_54b
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 2093
    .end local v44    # "i":I
    :pswitch_551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2094
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 2093
    const v9, 0x8007

    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_7

    .line 2099
    :pswitch_578
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 2100
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_58a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v4, v12}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V
    :try_end_596
    .catchall {:try_start_58a .. :try_end_596} :catchall_5bd

    monitor-exit v7

    .line 2101
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2104
    if-nez v12, :cond_5a5

    .line 2105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/high16 v7, 0x40000

    invoke-static {v4, v7}, Lcom/android/server/am/ActivityManagerService;->-wrap12(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2107
    :cond_5a5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4, v12}, Lcom/android/server/am/ActivityManagerService;->-wrap9(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    invoke-virtual {v7, v4}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    goto/16 :goto_7

    .line 2101
    :catchall_5bd
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2112
    .end local v12    # "userId":I
    :pswitch_5c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2114
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 2113
    const/16 v9, 0x4008

    .line 2112
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2117
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 2116
    const v9, 0x8008

    .line 2115
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_7

    .line 2122
    :pswitch_601
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_606
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2123
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v63

    .line 2124
    .local v63, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v63, :cond_630

    move-object/from16 v0, v63

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_630

    move-object/from16 v0, v63

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_621
    .catchall {:try_start_606 .. :try_end_621} :catchall_636

    if-eqz v4, :cond_630

    .line 2126
    :try_start_623
    move-object/from16 v0, v63

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v63

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v8}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_630
    .catch Landroid/os/RemoteException; {:try_start_623 .. :try_end_630} :catch_c66
    .catchall {:try_start_623 .. :try_end_630} :catchall_636

    :cond_630
    :goto_630
    monitor-exit v7

    .line 2122
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v63    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_636
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2134
    :pswitch_63c
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_656

    .line 2135
    const-string/jumbo v4, "FinishBooting"

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2137
    const-wide/16 v8, 0x40

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2139
    :cond_656
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_7

    .line 2140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_7

    .line 2146
    :pswitch_665
    :try_start_665
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Ljava/util/Locale;

    .line 2147
    .local v47, "l":Ljava/util/Locale;
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v69

    .line 2148
    .local v69, "service":Landroid/os/IBinder;
    invoke-static/range {v69 .. v69}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v49

    .line 2149
    .local v49, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Storing locale "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v47 .. v47}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for decryption UI"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const-string/jumbo v4, "SystemLocale"

    invoke-virtual/range {v47 .. v47}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-interface {v0, v4, v7}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6aa
    .catch Landroid/os/RemoteException; {:try_start_665 .. :try_end_6aa} :catch_6ac

    goto/16 :goto_7

    .line 2151
    .end local v47    # "l":Ljava/util/Locale;
    .end local v49    # "mountService":Landroid/os/storage/IMountService;
    .end local v69    # "service":Landroid/os/IBinder;
    :catch_6ac
    move-exception v37

    .line 2152
    .local v37, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Error storing locale for decryption UI"

    move-object/from16 v0, v37

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2157
    .end local v37    # "e":Landroid/os/RemoteException;
    :pswitch_6bb
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_6c0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_6ce
    .catchall {:try_start_6c0 .. :try_end_6ce} :catchall_6fa

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_6d1
    if-ltz v44, :cond_6e9

    .line 2161
    :try_start_6d3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_6e6
    .catch Landroid/os/RemoteException; {:try_start_6d3 .. :try_end_6e6} :catch_c63
    .catchall {:try_start_6d3 .. :try_end_6e6} :catchall_6fa

    .line 2158
    :goto_6e6
    add-int/lit8 v44, v44, -0x1

    goto :goto_6d1

    .line 2166
    :cond_6e9
    :try_start_6e9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_6f4
    .catchall {:try_start_6e9 .. :try_end_6f4} :catchall_6fa

    monitor-exit v7

    .line 2157
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v44    # "i":I
    :catchall_6fa
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2171
    :pswitch_700
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_705
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_713
    .catchall {:try_start_705 .. :try_end_713} :catchall_73f

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_716
    if-ltz v44, :cond_72e

    .line 2175
    :try_start_718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onActivityPinned()V
    :try_end_72b
    .catch Landroid/os/RemoteException; {:try_start_718 .. :try_end_72b} :catch_c60
    .catchall {:try_start_718 .. :try_end_72b} :catchall_73f

    .line 2172
    :goto_72b
    add-int/lit8 v44, v44, -0x1

    goto :goto_716

    .line 2180
    :cond_72e
    :try_start_72e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_739
    .catchall {:try_start_72e .. :try_end_739} :catchall_73f

    monitor-exit v7

    .line 2171
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v44    # "i":I
    :catchall_73f
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2185
    :pswitch_745
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_74a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_758
    .catchall {:try_start_74a .. :try_end_758} :catchall_784

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_75b
    if-ltz v44, :cond_773

    .line 2189
    :try_start_75d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt()V
    :try_end_770
    .catch Landroid/os/RemoteException; {:try_start_75d .. :try_end_770} :catch_c5d
    .catchall {:try_start_75d .. :try_end_770} :catchall_784

    .line 2186
    :goto_770
    add-int/lit8 v44, v44, -0x1

    goto :goto_75b

    .line 2194
    :cond_773
    :try_start_773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_77e
    .catchall {:try_start_773 .. :try_end_77e} :catchall_784

    monitor-exit v7

    .line 2185
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v44    # "i":I
    :catchall_784
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2199
    :pswitch_78a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_78f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_79d
    .catchall {:try_start_78f .. :try_end_79d} :catchall_7c9

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_7a0
    if-ltz v44, :cond_7b8

    .line 2203
    :try_start_7a2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V
    :try_end_7b5
    .catch Landroid/os/RemoteException; {:try_start_7a2 .. :try_end_7b5} :catch_c5a
    .catchall {:try_start_7a2 .. :try_end_7b5} :catchall_7c9

    .line 2200
    :goto_7b5
    add-int/lit8 v44, v44, -0x1

    goto :goto_7a0

    .line 2208
    :cond_7b8
    :try_start_7b8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_7c3
    .catchall {:try_start_7b8 .. :try_end_7c3} :catchall_7c9

    monitor-exit v7

    .line 2199
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v44    # "i":I
    :catchall_7c9
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2213
    :pswitch_7cf
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_7d4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_7e2
    .catchall {:try_start_7d4 .. :try_end_7e2} :catchall_818

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_7e5
    if-ltz v44, :cond_807

    .line 2217
    :try_start_7e7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    .line 2218
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 2217
    invoke-interface {v4, v7, v9}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;I)V
    :try_end_804
    .catch Landroid/os/RemoteException; {:try_start_7e7 .. :try_end_804} :catch_c57
    .catchall {:try_start_7e7 .. :try_end_804} :catchall_818

    .line 2214
    :goto_804
    add-int/lit8 v44, v44, -0x1

    goto :goto_7e5

    .line 2223
    :cond_807
    :try_start_807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_812
    .catchall {:try_start_807 .. :try_end_812} :catchall_818

    monitor-exit v8

    .line 2213
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v44    # "i":I
    :catchall_818
    move-exception v4

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2228
    :pswitch_81e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_823
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_831
    .catchall {:try_start_823 .. :try_end_831} :catchall_85d

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_834
    if-ltz v44, :cond_84c

    .line 2232
    :try_start_836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V
    :try_end_849
    .catch Landroid/os/RemoteException; {:try_start_836 .. :try_end_849} :catch_c54
    .catchall {:try_start_836 .. :try_end_849} :catchall_85d

    .line 2229
    :goto_849
    add-int/lit8 v44, v44, -0x1

    goto :goto_834

    .line 2238
    :cond_84c
    :try_start_84c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get11(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_857
    .catchall {:try_start_84c .. :try_end_857} :catchall_85d

    monitor-exit v7

    .line 2228
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v44    # "i":I
    :catchall_85d
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2243
    :pswitch_863
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v73, v0

    .line 2244
    .local v73, "uid":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, [B

    .line 2246
    .local v42, "firstPacket":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7

    .line 2247
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_87a
    :try_start_87a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v44

    if-ge v0, v4, :cond_8aa

    .line 2248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/server/am/ProcessRecord;

    .line 2249
    .local v56, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v56

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_89a
    .catchall {:try_start_87a .. :try_end_89a} :catchall_8ad

    move/from16 v0, v73

    if-ne v4, v0, :cond_8a7

    .line 2251
    :try_start_89e
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v42

    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_8a7
    .catch Landroid/os/RemoteException; {:try_start_89e .. :try_end_8a7} :catch_c51
    .catchall {:try_start_89e .. :try_end_8a7} :catchall_8ad

    .line 2247
    :cond_8a7
    :goto_8a7
    add-int/lit8 v44, v44, 0x1

    goto :goto_87a

    .end local v56    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_8aa
    monitor-exit v7

    goto/16 :goto_7

    .line 2246
    :catchall_8ad
    move-exception v4

    monitor-exit v7

    throw v4

    .line 2264
    .end local v42    # "firstPacket":[B
    .end local v44    # "i":I
    .end local v73    # "uid":I
    :pswitch_8b0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_8b5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 2266
    .local v60, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move/from16 v73, v0

    .line 2267
    .restart local v73    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v60

    move/from16 v1, v73

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/util/Pair;

    .line 2268
    .local v74, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v74, :cond_8e9

    .line 2269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v8, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v4, v0, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v74

    .end local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v74, Landroid/util/Pair;

    .line 2271
    .restart local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_8e9
    if-eqz v74, :cond_904

    .line 2272
    move-object/from16 v0, v74

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    .line 2273
    .local v50, "memLimit":J
    move-object/from16 v0, v74

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v65, v0

    check-cast v65, Ljava/lang/String;
    :try_end_8fd
    .catchall {:try_start_8b5 .. :try_end_8fd} :catchall_909

    :goto_8fd
    monitor-exit v7

    .line 2264
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2279
    if-nez v60, :cond_90f

    .line 2280
    return-void

    .line 2275
    .end local v50    # "memLimit":J
    :cond_904
    const-wide/16 v50, 0x0

    .line 2276
    .restart local v50    # "memLimit":J
    const/16 v65, 0x0

    .local v65, "reportPackage":Ljava/lang/String;
    goto :goto_8fd

    .line 2264
    .end local v50    # "memLimit":J
    .end local v60    # "procName":Ljava/lang/String;
    .end local v65    # "reportPackage":Ljava/lang/String;
    .end local v73    # "uid":I
    .end local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_909
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2286
    .restart local v50    # "memLimit":J
    .restart local v60    # "procName":Ljava/lang/String;
    .restart local v73    # "uid":I
    .restart local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_90f
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2287
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_916

    .line 2288
    return-void

    .line 2291
    :cond_916
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v60, v7, v8

    const v8, 0x10403ba

    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v70

    .line 2294
    .restart local v70    # "text":Ljava/lang/String;
    new-instance v35, Landroid/content/Intent;

    invoke-direct/range {v35 .. v35}, Landroid/content/Intent;-><init>()V

    .line 2295
    .local v35, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.server.am.DELETE_DUMPHEAP"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2296
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2297
    .local v23, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android"

    const-class v7, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2298
    const-string/jumbo v4, "process"

    move-object/from16 v0, v23

    move-object/from16 v1, v60

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2299
    const-string/jumbo v4, "size"

    move-object/from16 v0, v23

    move-wide/from16 v1, v50

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2300
    if-eqz v65, :cond_969

    .line 2301
    const-string/jumbo v4, "direct_launch"

    move-object/from16 v0, v23

    move-object/from16 v1, v65

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2303
    :cond_969
    invoke-static/range {v73 .. v73}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 2304
    .restart local v12    # "userId":I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2305
    const v7, 0x10806c4

    .line 2304
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2306
    const-wide/16 v8, 0x0

    .line 2304
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2307
    const/4 v7, 0x1

    .line 2304
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2308
    const/4 v7, 0x1

    .line 2304
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2310
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2311
    const v8, 0x1060059

    .line 2310
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 2304
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2314
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x10403bb

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2304
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2315
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 2317
    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, v26

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 2315
    const/16 v22, 0x0

    .line 2316
    const/high16 v24, 0x10000000

    const/16 v25, 0x0

    .line 2315
    invoke-static/range {v21 .. v26}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2304
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2318
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2319
    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2318
    const/4 v9, 0x0

    .line 2319
    const/4 v10, 0x0

    .line 2318
    move-object/from16 v0, v35

    invoke-static {v7, v9, v0, v10, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2304
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 2323
    .restart local v19    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_9f3
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 2324
    .restart local v20    # "outId":[I
    const-string/jumbo v15, "android"

    const-string/jumbo v16, "android"

    const/16 v17, 0x0

    .line 2325
    const v18, 0x10403ba

    move/from16 v21, v12

    .line 2324
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_a07
    .catch Ljava/lang/RuntimeException; {:try_start_9f3 .. :try_end_a07} :catch_a09
    .catch Landroid/os/RemoteException; {:try_start_9f3 .. :try_end_a07} :catch_c4e

    goto/16 :goto_7

    .line 2327
    .end local v20    # "outId":[I
    :catch_a09
    move-exception v39

    .line 2328
    .restart local v39    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    .line 2329
    const-string/jumbo v7, "Error showing notification for dump heap"

    .line 2328
    move-object/from16 v0, v39

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2334
    .end local v12    # "userId":I
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v35    # "deleteIntent":Landroid/content/Intent;
    .end local v39    # "e":Ljava/lang/RuntimeException;
    .end local v50    # "memLimit":J
    .end local v60    # "procName":Ljava/lang/String;
    .end local v70    # "text":Ljava/lang/String;
    .end local v73    # "uid":I
    .end local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :pswitch_a18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v7

    .line 2335
    sget-object v8, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 2338
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 2336
    const/4 v10, 0x3

    .line 2334
    invoke-virtual {v4, v7, v8, v10, v9}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 2339
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_a33
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 2341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    iput v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    iput v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I
    :try_end_a52
    .catchall {:try_start_a33 .. :try_end_a52} :catchall_a58

    monitor-exit v7

    .line 2339
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_a58
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2347
    :pswitch_a5e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_7

    .line 2350
    :pswitch_a6d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Lcom/android/server/am/AppTimeTracker;

    .line 2351
    .local v72, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_7

    .line 2354
    .end local v72    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :pswitch_a82
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    goto/16 :goto_7

    .line 2357
    :pswitch_a91
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/app/IUiAutomationConnection;

    .line 2359
    .local v33, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_a99
    invoke-interface/range {v33 .. v33}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_a9c
    .catch Landroid/os/RemoteException; {:try_start_a99 .. :try_end_a9c} :catch_aa6

    .line 2365
    :goto_a9c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/android/server/am/ActivityManagerService;->-set4(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_7

    .line 2360
    :catch_aa6
    move-exception v37

    .line 2361
    .restart local v37    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9c

    .line 2368
    .end local v33    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v37    # "e":Landroid/os/RemoteException;
    :pswitch_ab2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_ab7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get6(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_aec

    .line 2370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v16, 0x9c4

    sub-long v10, v10, v16

    cmp-long v4, v8, v10

    if-gez v4, :cond_af2

    .line 2371
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-wrap3()I

    .line 2372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set2(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Lcom/android/server/am/ActivityManagerService;->-set0(Lcom/android/server/am/ActivityManagerService;J)J
    :try_end_aec
    .catchall {:try_start_ab7 .. :try_end_aec} :catchall_b0c

    :cond_aec
    :goto_aec
    monitor-exit v7

    .line 2368
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 2375
    :cond_af2
    :try_start_af2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v53

    .line 2376
    .local v53, "newmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x9c4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_b0b
    .catchall {:try_start_af2 .. :try_end_b0b} :catchall_b0c

    goto :goto_aec

    .line 2368
    .end local v53    # "newmsg":Landroid/os/Message;
    :catchall_b0c
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2382
    :pswitch_b12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    goto/16 :goto_7

    .line 2385
    :pswitch_b1b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_b20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->logStackState()V
    :try_end_b2c
    .catchall {:try_start_b20 .. :try_end_b2c} :catchall_b32

    monitor-exit v7

    .line 2385
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_b32
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2390
    :pswitch_b38
    const-class v4, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lcom/android/server/vr/VrManagerInternal;

    .line 2391
    .local v76, "vrService":Lcom/android/server/vr/VrManagerInternal;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Lcom/android/server/am/ActivityRecord;

    .line 2396
    .restart local v63    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_b4d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2397
    move-object/from16 v0, v63

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_bd7

    const/16 v75, 0x1

    .line 2398
    .local v75, "vrMode":Z
    :goto_b58
    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v66, v0

    .line 2399
    .local v66, "requestedPackage":Landroid/content/ComponentName;
    move-object/from16 v0, v63

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2400
    .restart local v12    # "userId":I
    move-object/from16 v0, v63

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v32

    .line 2401
    .local v32, "callingPackage":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    move/from16 v0, v75

    if-eq v4, v0, :cond_bc6

    .line 2402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v75

    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-set1(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v9}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->-wrap2(Landroid/content/res/Configuration;Z)Z

    move-result v8

    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set3(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2404
    move-object/from16 v0, v63

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_bc6

    .line 2405
    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v59, v0

    .line 2406
    .local v59, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v59

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    if-lez v4, :cond_bc6

    .line 2407
    move-object/from16 v0, v59

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I
    :try_end_bae
    .catchall {:try_start_b4d .. :try_end_bae} :catchall_c04

    const/4 v8, 0x2

    if-ne v4, v8, :cond_bc6

    .line 2409
    :try_start_bb1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_bdb

    .line 2410
    move-object/from16 v0, v59

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    .line 2411
    const v8, 0x40000001    # 2.0000002f

    const/4 v9, 0x1

    .line 2410
    invoke-static {v4, v8, v9}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_bc6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bb1 .. :try_end_bc6} :catch_be5
    .catchall {:try_start_bb1 .. :try_end_bc6} :catchall_c04

    .end local v59    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_bc6
    :goto_bc6
    monitor-exit v7

    .line 2396
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2425
    move-object/from16 v0, v76

    move/from16 v1, v75

    move-object/from16 v2, v66

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    goto/16 :goto_7

    .line 2397
    .end local v12    # "userId":I
    .end local v32    # "callingPackage":Landroid/content/ComponentName;
    .end local v66    # "requestedPackage":Landroid/content/ComponentName;
    .end local v75    # "vrMode":Z
    :cond_bd7
    const/16 v75, 0x0

    .restart local v75    # "vrMode":Z
    goto/16 :goto_b58

    .line 2413
    .restart local v12    # "userId":I
    .restart local v32    # "callingPackage":Landroid/content/ComponentName;
    .restart local v59    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v66    # "requestedPackage":Landroid/content/ComponentName;
    :cond_bdb
    :try_start_bdb
    move-object/from16 v0, v59

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    .line 2414
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2413
    invoke-static {v4, v8, v9}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_be4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bdb .. :try_end_be4} :catch_be5
    .catchall {:try_start_bdb .. :try_end_be4} :catchall_c04

    goto :goto_bc6

    .line 2416
    :catch_be5
    move-exception v38

    .line 2417
    .local v38, "e":Ljava/lang/IllegalArgumentException;
    :try_start_be6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c03
    .catchall {:try_start_be6 .. :try_end_c03} :catchall_c04

    goto :goto_bc6

    .line 2396
    .end local v12    # "userId":I
    .end local v32    # "callingPackage":Landroid/content/ComponentName;
    .end local v38    # "e":Ljava/lang/IllegalArgumentException;
    .end local v59    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v66    # "requestedPackage":Landroid/content/ComponentName;
    .end local v75    # "vrMode":Z
    :catchall_c04
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2428
    .end local v63    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v76    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    :pswitch_c0a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Lcom/android/server/am/ActivityRecord;

    .line 2429
    .restart local v63    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v63, :cond_c48

    move-object/from16 v0, v63

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_c48

    const/16 v52, 0x1

    .line 2430
    .local v52, "needsVrMode":Z
    :goto_c1c
    if-eqz v52, :cond_7

    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_c4b

    const/16 v25, 0x1

    :goto_c2d
    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v27, v0

    .line 2432
    move-object/from16 v0, v63

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    const/16 v29, 0x0

    .line 2431
    invoke-static/range {v24 .. v29}, Lcom/android/server/am/ActivityManagerService;->-wrap4(Lcom/android/server/am/ActivityManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    goto/16 :goto_7

    .line 2429
    .end local v52    # "needsVrMode":Z
    :cond_c48
    const/16 v52, 0x0

    goto :goto_c1c

    .line 2431
    .restart local v52    # "needsVrMode":Z
    :cond_c4b
    const/16 v25, 0x0

    goto :goto_c2d

    .line 2330
    .end local v52    # "needsVrMode":Z
    .end local v63    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v12    # "userId":I
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v35    # "deleteIntent":Landroid/content/Intent;
    .restart local v50    # "memLimit":J
    .restart local v60    # "procName":Ljava/lang/String;
    .restart local v70    # "text":Ljava/lang/String;
    .restart local v73    # "uid":I
    .restart local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_c4e
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 2252
    .end local v12    # "userId":I
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v35    # "deleteIntent":Landroid/content/Intent;
    .end local v37    # "e":Landroid/os/RemoteException;
    .end local v50    # "memLimit":J
    .end local v60    # "procName":Ljava/lang/String;
    .end local v70    # "text":Ljava/lang/String;
    .end local v74    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v42    # "firstPacket":[B
    .restart local v44    # "i":I
    .restart local v56    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_c51
    move-exception v45

    .local v45, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_8a7

    .line 2234
    .end local v42    # "firstPacket":[B
    .end local v45    # "ignored":Landroid/os/RemoteException;
    .end local v56    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v73    # "uid":I
    :catch_c54
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_849

    .line 2219
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_c57
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_804

    .line 2204
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_c5a
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7b5

    .line 2190
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_c5d
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_770

    .line 2176
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_c60
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_72b

    .line 2162
    .end local v37    # "e":Landroid/os/RemoteException;
    :catch_c63
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_6e6

    .line 2127
    .end local v37    # "e":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .restart local v63    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_c66
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_630

    .line 2014
    .end local v37    # "e":Landroid/os/RemoteException;
    .end local v63    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    :catch_c69
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 1997
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v37    # "e":Landroid/os/RemoteException;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v34    # "context":Landroid/content/Context;
    .restart local v46    # "inm":Landroid/app/INotificationManager;
    .restart local v61    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v68    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v70    # "text":Ljava/lang/String;
    :catch_c6c
    move-exception v37

    .restart local v37    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 1844
    nop

    :pswitch_data_c70
    .packed-switch 0x4
        :pswitch_8
        :pswitch_22
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3c
        :pswitch_7d
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1d7
        :pswitch_252
        :pswitch_270
        :pswitch_2b2
        :pswitch_2bd
        :pswitch_3af
        :pswitch_7
        :pswitch_3d5
        :pswitch_e0
        :pswitch_143
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_40a
        :pswitch_422
        :pswitch_43b
        :pswitch_454
        :pswitch_46d
        :pswitch_49e
        :pswitch_4a7
        :pswitch_4c8
        :pswitch_4e5
        :pswitch_551
        :pswitch_5c3
        :pswitch_601
        :pswitch_63c
        :pswitch_7
        :pswitch_665
        :pswitch_7
        :pswitch_6bb
        :pswitch_863
        :pswitch_8b0
        :pswitch_a18
        :pswitch_a5e
        :pswitch_7
        :pswitch_a6d
        :pswitch_a82
        :pswitch_a91
        :pswitch_ab2
        :pswitch_22d
        :pswitch_b12
        :pswitch_578
        :pswitch_b1b
        :pswitch_b38
        :pswitch_700
        :pswitch_745
        :pswitch_78a
        :pswitch_7cf
        :pswitch_81e
        :pswitch_c0a
    .end packed-switch
.end method

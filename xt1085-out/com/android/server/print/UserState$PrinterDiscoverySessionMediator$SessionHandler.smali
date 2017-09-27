.class final Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;
.super Landroid/os/Handler;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionHandler"
.end annotation


# static fields
.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x5

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x6

.field public static final MSG_DESTROY_SERVICE:I = 0x10

.field public static final MSG_DISPATCH_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x9

.field public static final MSG_DISPATCH_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0xa

.field public static final MSG_DISPATCH_PRINTERS_ADDED:I = 0x3

.field public static final MSG_DISPATCH_PRINTERS_REMOVED:I = 0x4

.field public static final MSG_DISPATCH_START_PRINTER_DISCOVERY:I = 0xb

.field public static final MSG_DISPATCH_STOP_PRINTER_DISCOVERY:I = 0xc

.field public static final MSG_PRINTERS_ADDED:I = 0x1

.field public static final MSG_PRINTERS_REMOVED:I = 0x2

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x7

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0xe

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x8

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0xf

.field public static final MSG_VALIDATE_PRINTERS:I = 0xd


# instance fields
.field final synthetic this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 1768
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1767
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1774
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_e4

    .line 1773
    :goto_5
    return-void

    .line 1776
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1777
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1778
    .local v2, "observer":Landroid/print/IPrinterDiscoveryObserver;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1779
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1780
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v2, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap6(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    goto :goto_5

    .line 1784
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    :pswitch_1b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1785
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1786
    .restart local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 1787
    .local v5, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1788
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v2, v5}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap7(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 1792
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    .end local v5    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1793
    .restart local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap2(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_5

    .line 1797
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :pswitch_39
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 1798
    .restart local v5    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v5}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap3(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_5

    .line 1802
    .end local v5    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_43
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1803
    .local v6, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->createPrinterDiscoverySession()V

    goto :goto_5

    .line 1807
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_4b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1808
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->destroyPrinterDiscoverySession()V

    goto :goto_5

    .line 1812
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_53
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1813
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/print/RemotePrintService;->startPrinterDiscovery(Ljava/util/List;)V

    goto :goto_5

    .line 1817
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_5c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1818
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->stopPrinterDiscovery()V

    goto :goto_5

    .line 1822
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_64
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1823
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap0(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_5

    .line 1827
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_6e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1828
    .restart local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap1(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_5

    .line 1832
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_78
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1833
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1834
    .restart local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1835
    .local v4, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1836
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v7, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap4(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_5

    .line 1840
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_8e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1841
    .restart local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap5(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto/16 :goto_5

    .line 1845
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_99
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1846
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1847
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1848
    .restart local v4    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1849
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v6, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap10(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    goto/16 :goto_5

    .line 1853
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_af
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1854
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1855
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrinterId;

    .line 1856
    .local v3, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1857
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v6, v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap8(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto/16 :goto_5

    .line 1861
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "printerId":Landroid/print/PrinterId;
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_c5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1862
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1863
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrinterId;

    .line 1864
    .restart local v3    # "printerId":Landroid/print/PrinterId;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1865
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-static {v8, v6, v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap9(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto/16 :goto_5

    .line 1869
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "printerId":Landroid/print/PrinterId;
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_db
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    .line 1870
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto/16 :goto_5

    .line 1774
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1b
        :pswitch_2f
        :pswitch_39
        :pswitch_43
        :pswitch_4b
        :pswitch_53
        :pswitch_5c
        :pswitch_64
        :pswitch_6e
        :pswitch_78
        :pswitch_8e
        :pswitch_99
        :pswitch_af
        :pswitch_c5
        :pswitch_db
    .end packed-switch
.end method
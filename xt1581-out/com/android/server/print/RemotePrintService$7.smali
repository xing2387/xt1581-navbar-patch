.class Lcom/android/server/print/RemotePrintService$7;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$7;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$7;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-wrap10(Lcom/android/server/print/RemotePrintService;)V

    .line 366
    return-void
.end method

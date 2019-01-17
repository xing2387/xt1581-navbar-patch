.class final Lcom/motorola/server/display/PanelsService$BinderService;
.super Landroid/os/Binder;
.source "PanelsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/display/PanelsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/display/PanelsService;


# direct methods
.method private constructor <init>(Lcom/motorola/server/display/PanelsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/motorola/server/display/PanelsService;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/motorola/server/display/PanelsService$BinderService;->this$0:Lcom/motorola/server/display/PanelsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/server/display/PanelsService;Lcom/motorola/server/display/PanelsService$BinderService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/motorola/server/display/PanelsService;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/display/PanelsService$BinderService;-><init>(Lcom/motorola/server/display/PanelsService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/motorola/server/display/PanelsService$BinderService;->this$0:Lcom/motorola/server/display/PanelsService;

    invoke-virtual {v0}, Lcom/motorola/server/display/PanelsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump PanelsService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    const-string/jumbo v1, ", uid="

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    return-void

    .line 232
    :cond_3a
    iget-object v0, p0, Lcom/motorola/server/display/PanelsService$BinderService;->this$0:Lcom/motorola/server/display/PanelsService;

    invoke-static {v0, p2}, Lcom/motorola/server/display/PanelsService;->-wrap0(Lcom/motorola/server/display/PanelsService;Ljava/io/PrintWriter;)V

    .line 224
    return-void
.end method

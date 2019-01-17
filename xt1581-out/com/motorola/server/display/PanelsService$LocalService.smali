.class public final Lcom/motorola/server/display/PanelsService$LocalService;
.super Ljava/lang/Object;
.source "PanelsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/display/PanelsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/display/PanelsService;


# direct methods
.method public constructor <init>(Lcom/motorola/server/display/PanelsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/motorola/server/display/PanelsService;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/motorola/server/display/PanelsService$LocalService;->this$0:Lcom/motorola/server/display/PanelsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public noteHighBright(Z)V
    .registers 5
    .param p1, "bright"    # Z

    .prologue
    .line 125
    invoke-static {}, Lcom/motorola/server/display/PanelsService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "PanelsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteHighBright: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_20
    iget-object v0, p0, Lcom/motorola/server/display/PanelsService$LocalService;->this$0:Lcom/motorola/server/display/PanelsService;

    invoke-static {v0, p1}, Lcom/motorola/server/display/PanelsService;->-set0(Lcom/motorola/server/display/PanelsService;Z)Z

    .line 127
    iget-object v0, p0, Lcom/motorola/server/display/PanelsService$LocalService;->this$0:Lcom/motorola/server/display/PanelsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/server/display/PanelsService;->-wrap1(Lcom/motorola/server/display/PanelsService;I)V

    .line 124
    return-void
.end method

.method public noteLowPower(Z)V
    .registers 5
    .param p1, "low"    # Z

    .prologue
    .line 113
    invoke-static {}, Lcom/motorola/server/display/PanelsService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "PanelsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteLowPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_20
    iget-object v0, p0, Lcom/motorola/server/display/PanelsService$LocalService;->this$0:Lcom/motorola/server/display/PanelsService;

    invoke-static {v0, p1}, Lcom/motorola/server/display/PanelsService;->-set1(Lcom/motorola/server/display/PanelsService;Z)Z

    .line 115
    iget-object v0, p0, Lcom/motorola/server/display/PanelsService$LocalService;->this$0:Lcom/motorola/server/display/PanelsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/server/display/PanelsService;->-wrap1(Lcom/motorola/server/display/PanelsService;I)V

    .line 112
    return-void
.end method

.method public noteScreenState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 119
    invoke-static {}, Lcom/motorola/server/display/PanelsService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "PanelsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_20
    iget-object v0, p0, Lcom/motorola/server/display/PanelsService$LocalService;->this$0:Lcom/motorola/server/display/PanelsService;

    invoke-static {v0, p1}, Lcom/motorola/server/display/PanelsService;->-set2(Lcom/motorola/server/display/PanelsService;I)I

    .line 121
    iget-object v0, p0, Lcom/motorola/server/display/PanelsService$LocalService;->this$0:Lcom/motorola/server/display/PanelsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/server/display/PanelsService;->-wrap1(Lcom/motorola/server/display/PanelsService;I)V

    .line 118
    return-void
.end method

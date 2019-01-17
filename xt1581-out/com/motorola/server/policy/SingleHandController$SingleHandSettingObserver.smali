.class final Lcom/motorola/server/policy/SingleHandController$SingleHandSettingObserver;
.super Landroid/database/ContentObserver;
.source "SingleHandController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/policy/SingleHandController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SingleHandSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/policy/SingleHandController;


# direct methods
.method public constructor <init>(Lcom/motorola/server/policy/SingleHandController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/motorola/server/policy/SingleHandController;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/motorola/server/policy/SingleHandController$SingleHandSettingObserver;->this$0:Lcom/motorola/server/policy/SingleHandController;

    .line 233
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 232
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Lcom/motorola/server/policy/SingleHandController$SingleHandSettingObserver;->this$0:Lcom/motorola/server/policy/SingleHandController;

    invoke-static {v0}, Lcom/motorola/server/policy/SingleHandController;->-wrap0(Lcom/motorola/server/policy/SingleHandController;)V

    .line 238
    return-void
.end method

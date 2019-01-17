.class Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;
.super Landroid/database/ContentObserver;
.source "NightDisplayIntensityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/display/NightDisplayIntensityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NightDisplayIntensityObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/display/NightDisplayIntensityManager;


# direct methods
.method constructor <init>(Lcom/motorola/server/display/NightDisplayIntensityManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/motorola/server/display/NightDisplayIntensityManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;->this$0:Lcom/motorola/server/display/NightDisplayIntensityManager;

    .line 95
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 94
    return-void
.end method


# virtual methods
.method observe()V
    .registers 6

    .prologue
    .line 103
    iget-object v2, p0, Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;->this$0:Lcom/motorola/server/display/NightDisplayIntensityManager;

    invoke-static {v2}, Lcom/motorola/server/display/NightDisplayIntensityManager;->-get0(Lcom/motorola/server/display/NightDisplayIntensityManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "night_display_intensity"

    invoke-static {v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 106
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;->this$0:Lcom/motorola/server/display/NightDisplayIntensityManager;

    invoke-static {v2}, Lcom/motorola/server/display/NightDisplayIntensityManager;->-get1(Lcom/motorola/server/display/NightDisplayIntensityManager;)Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 101
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/motorola/server/display/NightDisplayIntensityManager$NightDisplayIntensityObserver;->this$0:Lcom/motorola/server/display/NightDisplayIntensityManager;

    invoke-static {v0}, Lcom/motorola/server/display/NightDisplayIntensityManager;->-wrap0(Lcom/motorola/server/display/NightDisplayIntensityManager;)V

    .line 110
    return-void
.end method

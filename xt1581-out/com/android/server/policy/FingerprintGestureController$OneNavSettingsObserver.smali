.class Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;
.super Landroid/database/ContentObserver;
.source "FingerprintGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/FingerprintGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OneNavSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FingerprintGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FingerprintGestureController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/FingerprintGestureController;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    .line 197
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 196
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 201
    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-static {v1}, Lcom/android/server/policy/FingerprintGestureController;->-get0(Lcom/android/server/policy/FingerprintGestureController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 203
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "fps_onenav_swipe_direction"

    .line 202
    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 206
    const-string/jumbo v1, "fps_onenav_enabled"

    .line 205
    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 210
    const-string/jumbo v1, "fps_onenav_tutorial_mode"

    .line 209
    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 215
    const-string/jumbo v1, "fps_onenav_show_navigation_bar"

    .line 214
    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 220
    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-static {v1}, Lcom/android/server/policy/FingerprintGestureController;->-wrap2(Lcom/android/server/policy/FingerprintGestureController;)V

    .line 200
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController$OneNavSettingsObserver;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-static {v0}, Lcom/android/server/policy/FingerprintGestureController;->-wrap2(Lcom/android/server/policy/FingerprintGestureController;)V

    .line 224
    return-void
.end method

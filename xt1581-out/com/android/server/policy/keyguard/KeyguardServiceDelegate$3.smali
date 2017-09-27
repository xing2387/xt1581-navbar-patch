.class Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 420
    const-string/jumbo v1, "KeyguardServiceDelegate"

    const-string/jumbo v2, "The Runnable posted by showScrim() is running now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-get3(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 422
    const-string/jumbo v1, "KeyguardServiceDelegate"

    const-string/jumbo v2, "mScrim.setVisibility(View.VISIBLE) runs when mScrim\'s mAttachInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$3;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->-get3(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_28
    .catch Landroid/view/ViewRootImpl$CalledFromWrongThreadException; {:try_start_1e .. :try_end_28} :catch_29

    .line 418
    :goto_28
    return-void

    .line 428
    :catch_29
    move-exception v0

    .line 429
    .local v0, "e":Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    const-string/jumbo v1, "KeyguardServiceDelegate"

    const-string/jumbo v2, "mScrim.setVisibility(View.VISIBLE) runs NOT in the original thread that created its view hierarchy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

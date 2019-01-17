.class Lcom/android/server/policy/FingerprintGestureController$3;
.super Landroid/database/ContentObserver;
.source "FingerprintGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/FingerprintGestureController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/FingerprintGestureController$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FingerprintGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FingerprintGestureController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/FingerprintGestureController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/policy/FingerprintGestureController$3;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController$3;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    iget-object v1, p0, Lcom/android/server/policy/FingerprintGestureController$3;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    iget-object v2, p0, Lcom/android/server/policy/FingerprintGestureController$3;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-static {v2}, Lcom/android/server/policy/FingerprintGestureController;->-get0(Lcom/android/server/policy/FingerprintGestureController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/policy/FingerprintGestureController;->-wrap0(Lcom/android/server/policy/FingerprintGestureController;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/policy/FingerprintGestureController;->-set0(Lcom/android/server/policy/FingerprintGestureController;Z)Z

    .line 323
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController$3;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-static {v0}, Lcom/android/server/policy/FingerprintGestureController;->-get1(Lcom/android/server/policy/FingerprintGestureController;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 324
    iget-object v0, p0, Lcom/android/server/policy/FingerprintGestureController$3;->this$0:Lcom/android/server/policy/FingerprintGestureController;

    invoke-static {v0}, Lcom/android/server/policy/FingerprintGestureController;->-wrap1(Lcom/android/server/policy/FingerprintGestureController;)V

    .line 320
    :cond_1e
    return-void
.end method

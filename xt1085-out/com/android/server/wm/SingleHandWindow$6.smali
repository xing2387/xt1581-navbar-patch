.class Lcom/android/server/wm/SingleHandWindow$6;
.super Ljava/lang/Object;
.source "SingleHandWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SingleHandWindow;->showHint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SingleHandWindow;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SingleHandWindow;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/SingleHandWindow;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/server/wm/SingleHandWindow$6;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow$6;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandWindow;->-get2(Lcom/android/server/wm/SingleHandWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 434
    return-void
.end method

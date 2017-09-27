.class Lcom/android/server/MasterClearReceiver$WipeCacheTask;
.super Landroid/os/AsyncTask;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MasterClearReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WipeCacheTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeCacheTask;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$WipeCacheTask;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$WipeCacheTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 109
    const-string/jumbo v0, "MasterClear"

    const-string/jumbo v1, " Wiping /Cache Only"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeCacheTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/RecoverySystem;->clearCache(Landroid/content/Context;)V

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

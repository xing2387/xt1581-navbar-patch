.class Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePeriodicSyncMessagePayload"
.end annotation


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final flex:J

.field public final pollFrequency:J

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p3, "pollFrequency"    # J
    .param p5, "flex"    # J
    .param p7, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    iput-object p2, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1058
    iput-wide p3, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    .line 1059
    iput-wide p5, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    .line 1060
    iput-object p7, p0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    .line 1056
    return-void
.end method

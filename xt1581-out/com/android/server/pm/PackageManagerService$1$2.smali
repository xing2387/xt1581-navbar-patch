.class Lcom/android/server/pm/PackageManagerService$1$2;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$1;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$1;

.field final synthetic val$privateVol:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$1;Landroid/os/storage/VolumeInfo;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$1;
    .param p2, "val$privateVol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 2082
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1$2;->this$1:Lcom/android/server/pm/PackageManagerService$1;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$1$2;->val$privateVol:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1$2;->this$1:Lcom/android/server/pm/PackageManagerService$1;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1$2;->val$privateVol:Landroid/os/storage/VolumeInfo;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap42(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 2083
    return-void
.end method

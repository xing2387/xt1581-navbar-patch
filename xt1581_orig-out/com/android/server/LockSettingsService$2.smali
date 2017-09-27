.class Lcom/android/server/LockSettingsService$2;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsStorage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 284
    const-string/jumbo v1, "ro.lockscreen.disable.default"

    .line 283
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 285
    .local v0, "lockScreenDisable":Z
    if-eqz v0, :cond_19

    .line 286
    iget-object v1, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.disabled"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, p1, v2, v3, v5}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    :cond_19
    iget-object v1, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    move-result-object v2

    const-string/jumbo v3, "lockscreen.power_button_instantly_locks"

    .line 290
    iget-object v1, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/LockSettingsService;->-get0(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x11200bf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string/jumbo v1, "1"

    .line 289
    :goto_38
    invoke-virtual {v2, p1, v3, v1, v5}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    return-void

    .line 290
    :cond_3c
    const-string/jumbo v1, "0"

    goto :goto_38
.end method

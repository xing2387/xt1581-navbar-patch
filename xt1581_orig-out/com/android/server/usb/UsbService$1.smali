.class Lcom/android/server/usb/UsbService$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usb/UsbService;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 150
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v2, v1}, Lcom/android/server/usb/UsbService;->-wrap0(Lcom/android/server/usb/UsbService;I)V

    .line 163
    :cond_1a
    :goto_1a
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 164
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-get0(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->sendUserPresent()V

    .line 146
    :cond_2c
    :goto_2c
    return-void

    .line 151
    :cond_2d
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 152
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-get1(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 153
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-get2(Lcom/android/server/usb/UsbService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_48

    monitor-exit v3

    goto :goto_1a

    .line 152
    :catchall_48
    move-exception v2

    monitor-exit v3

    throw v2

    .line 155
    :cond_4b
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 157
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-get0(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 158
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-get0(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->updateUserRestrictions()V

    goto :goto_1a

    .line 165
    :cond_66
    const-string/jumbo v2, "com.motorola.internal.intent.action.USER_LOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 167
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-get0(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->sendUserLocked()V

    goto :goto_2c
.end method
.class final Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecurityPolicy"
.end annotation


# static fields
.field public static final INVALID_WINDOW_ID:I = -0x1

.field private static final RETRIEVAL_ALLOWING_EVENT_TYPES:I = 0x3b9bf


# instance fields
.field public mAccessibilityFocusNodeId:J

.field public mAccessibilityFocusedWindowId:I

.field public mActiveWindowId:I

.field public mFocusedWindowId:I

.field private mTouchInteractionInProgress:Z

.field public mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p1, "windowId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)I
    .registers 3
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v0, -0x1

    .line 3745
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3766
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3767
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3768
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3769
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    .line 3745
    return-void
.end method

.method private canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3774
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 3775
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_12

    .line 3802
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    move-result v1

    return v1

    .line 3795
    :sswitch_10
    const/4 v1, 0x1

    return v1

    .line 3775
    :sswitch_data_12
    .sparse-switch
        0x20 -> :sswitch_10
        0x40 -> :sswitch_10
        0x80 -> :sswitch_10
        0x100 -> :sswitch_10
        0x200 -> :sswitch_10
        0x400 -> :sswitch_10
        0x4000 -> :sswitch_10
        0x40000 -> :sswitch_10
        0x80000 -> :sswitch_10
        0x100000 -> :sswitch_10
        0x200000 -> :sswitch_10
        0x400000 -> :sswitch_10
        0x1000000 -> :sswitch_10
    .end sparse-switch
.end method

.method private enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    .line 4175
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get0()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 4176
    return-void

    .line 4178
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 4179
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4180
    const-string/jumbo v2, " required to call "

    .line 4179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4180
    const-string/jumbo v2, " from pid="

    .line 4179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4181
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 4179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4181
    const-string/jumbo v2, ", uid="

    .line 4179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4174
    :cond_54
    return-void
.end method

.method private findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 7
    .param p1, "windowId"    # I

    .prologue
    const/4 v4, 0x0

    .line 4162
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v3, :cond_20

    .line 4163
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 4164
    .local v2, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_20

    .line 4165
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 4166
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 4167
    return-object v1

    .line 4164
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4171
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_20
    return-object v4
.end method

.method private getFocusedWindowId()I
    .registers 4

    .prologue
    .line 4190
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get16(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 4191
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4192
    :try_start_11
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_19

    move-result v1

    monitor-exit v2

    return v1

    .line 4191
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4186
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isRetrievalAllowingWindow(I)Z
    .registers 5
    .param p1, "windowId"    # I

    .prologue
    const/4 v0, 0x1

    .line 4152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_a

    .line 4153
    return v0

    .line 4155
    :cond_a
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne p1, v1, :cond_f

    .line 4156
    return v0

    .line 4158
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private notifyWindowsChanged()V
    .registers 7

    .prologue
    .line 4054
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v1

    if-nez v1, :cond_9

    .line 4055
    return-void

    .line 4057
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4061
    .local v2, "identity":J
    const/high16 v1, 0x400000

    .line 4060
    :try_start_f
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 4062
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 4063
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 4065
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4053
    return-void

    .line 4064
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :catchall_29
    move-exception v1

    .line 4065
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4064
    throw v1
.end method

.method private resolveProfileParentLocked(I)I
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 4093
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    if-eq p1, v3, :cond_27

    .line 4094
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4096
    .local v0, "identity":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get15(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 4097
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_24

    .line 4098
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_28

    move-result v3

    .line 4101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4098
    return v3

    .line 4101
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4104
    .end local v0    # "identity":J
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :cond_27
    return p1

    .line 4100
    .restart local v0    # "identity":J
    :catchall_28
    move-exception v3

    .line 4101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4100
    throw v3
.end method

.method private setAccessibilityFocusedWindowLocked(I)V
    .registers 6
    .param p1, "windowId"    # I

    .prologue
    .line 4039
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v3, p1, :cond_2d

    .line 4040
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 4041
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v3, :cond_2a

    .line 4042
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 4043
    .local v2, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_2a

    .line 4044
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 4045
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_28

    const/4 v3, 0x1

    :goto_22
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 4043
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 4045
    :cond_28
    const/4 v3, 0x0

    goto :goto_22

    .line 4049
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->notifyWindowsChanged()V

    .line 4038
    :cond_2d
    return-void
.end method

.method private setActiveWindowLocked(I)V
    .registers 6
    .param p1, "windowId"    # I

    .prologue
    .line 4025
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v3, p1, :cond_2d

    .line 4026
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 4027
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v3, :cond_2a

    .line 4028
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 4029
    .local v2, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_2a

    .line 4030
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 4031
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_28

    const/4 v3, 0x1

    :goto_22
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 4029
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 4031
    :cond_28
    const/4 v3, 0x0

    goto :goto_22

    .line 4034
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->notifyWindowsChanged()V

    .line 4024
    :cond_2d
    return-void
.end method


# virtual methods
.method public canControlMagnification(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    const/4 v0, 0x0

    .line 4083
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "windowId"    # I

    .prologue
    .line 4070
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    const/4 v0, 0x0

    .line 4088
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    const/4 v0, 0x0

    .line 4078
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 4074
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public clearWindowsLocked()V
    .registers 4

    .prologue
    .line 3808
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3809
    .local v1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3810
    .local v0, "activeWindowId":I
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 3811
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3812
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    .line 3807
    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .registers 11
    .param p1, "windowId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .prologue
    const/4 v7, 0x0

    .line 3876
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v6, :cond_6

    .line 3877
    return v7

    .line 3884
    :cond_6
    const/4 v4, 0x0

    .line 3885
    .local v4, "windowInteractiveRegion":Landroid/graphics/Region;
    const/4 v5, 0x0

    .line 3887
    .local v5, "windowInteractiveRegionChanged":Z
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 3888
    .local v3, "windowCount":I
    add-int/lit8 v2, v3, -0x1

    .end local v4    # "windowInteractiveRegion":Landroid/graphics/Region;
    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_4c

    .line 3889
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3890
    .local v0, "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v4, :cond_32

    .line 3891
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2f

    .line 3892
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get13(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3893
    .local v1, "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3894
    invoke-virtual {p2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3895
    move-object v4, p2

    .line 3888
    .end local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 3898
    :cond_32
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    .line 3899
    const/4 v7, 0x4

    .line 3898
    if-eq v6, v7, :cond_2f

    .line 3900
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get13(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3901
    .restart local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3902
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 3903
    const/4 v5, 0x1

    goto :goto_2f

    .line 3908
    .end local v0    # "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_4c
    return v5
.end method

.method public getActiveWindowId()I
    .registers 3

    .prologue
    .line 4018
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v0, :cond_c

    .line 4021
    :cond_9
    :goto_9
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0

    .line 4019
    :cond_c
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    goto :goto_9
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 4143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4144
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_13

    .line 4145
    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_14

    .line 4144
    :cond_13
    :goto_13
    return v1

    .line 4146
    :cond_14
    const/4 v2, -0x2

    if-eq p1, v2, :cond_13

    .line 4147
    const/4 v2, -0x3

    if-eq p1, v2, :cond_13

    const/4 v1, 0x0

    goto :goto_13
.end method

.method public onTouchInteractionEnd()V
    .registers 6

    .prologue
    .line 3991
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3992
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    .line 4001
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 4002
    .local v0, "oldActiveWindow":I
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    .line 4008
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v0, v1, :cond_3f

    .line 4009
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v1, v0, :cond_3f

    .line 4010
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    .line 4008
    if-eqz v1, :cond_3f

    .line 4011
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    const/16 v3, 0x9

    .line 4012
    const/4 v4, 0x0

    .line 4011
    invoke-virtual {v1, v3, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit v2

    .line 3990
    return-void

    .line 3991
    .end local v0    # "oldActiveWindow":I
    :catchall_41
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTouchInteractionStart()V
    .registers 3

    .prologue
    .line 3985
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3986
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    monitor-exit v0

    .line 3984
    return-void

    .line 3985
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    .line 4108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4109
    .local v0, "callingUid":I
    if-eqz v0, :cond_c

    .line 4110
    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_17

    .line 4112
    :cond_c
    if-eq p1, v5, :cond_10

    .line 4113
    if-ne p1, v4, :cond_26

    .line 4114
    :cond_10
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    return v3

    .line 4111
    :cond_17
    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_c

    .line 4118
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4119
    .local v1, "callingUserId":I
    if-ne v1, p1, :cond_2b

    .line 4120
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v3

    return v3

    .line 4116
    .end local v1    # "callingUserId":I
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v3

    return v3

    .line 4122
    .restart local v1    # "callingUserId":I
    :cond_2b
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v2

    .line 4123
    .local v2, "callingUserParentId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    if-ne v2, v3, :cond_42

    .line 4124
    if-eq p1, v5, :cond_3b

    .line 4125
    if-ne p1, v4, :cond_42

    .line 4126
    :cond_3b
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    return v3

    .line 4128
    :cond_42
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 4129
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 4134
    :cond_54
    if-eq p1, v5, :cond_58

    .line 4135
    if-ne p1, v4, :cond_92

    .line 4136
    :cond_58
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    return v3

    .line 4130
    :cond_5f
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Call from user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " as user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4131
    const-string/jumbo v5, " without permission INTERACT_ACROSS_USERS or "

    .line 4130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4132
    const-string/jumbo v5, "INTERACT_ACROSS_USERS_FULL not allowed."

    .line 4130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4138
    :cond_92
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IJII)V
    .registers 12
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J
    .param p4, "eventType"    # I
    .param p5, "eventAction"    # I

    .prologue
    const-wide/32 v4, 0x7fffffff

    .line 3927
    sparse-switch p4, :sswitch_data_90

    .line 3918
    :goto_6
    return-void

    .line 3935
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3936
    :try_start_e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v0

    if-nez v0, :cond_22

    .line 3937
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3938
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    if-ne p1, v0, :cond_22

    .line 3939
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_24

    :cond_22
    :goto_22
    monitor-exit v1

    goto :goto_6

    .line 3935
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3948
    :sswitch_27
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3949
    :try_start_2e
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v0, p1, :cond_22

    .line 3950
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_3a

    goto :goto_22

    .line 3948
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3956
    :sswitch_3d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3957
    :try_start_44
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_22

    .line 3958
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v0

    .line 3959
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3958
    const/16 v3, 0x9

    .line 3959
    const/4 v4, 0x0

    .line 3958
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3960
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setAccessibilityFocusedWindowLocked(I)V

    .line 3961
    iput-wide p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J
    :try_end_65
    .catchall {:try_start_44 .. :try_end_65} :catchall_66

    goto :goto_22

    .line 3956
    :catchall_66
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3967
    :sswitch_69
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3968
    :try_start_70
    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_7b

    .line 3969
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    .line 3973
    :cond_7b
    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_22

    .line 3974
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v0, p1, :cond_22

    .line 3975
    const/16 v0, 0x40

    if-eq p5, v0, :cond_22

    .line 3977
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I
    :try_end_8c
    .catchall {:try_start_70 .. :try_end_8c} :catchall_8d

    goto :goto_22

    .line 3967
    :catchall_8d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3927
    :sswitch_data_90
    .sparse-switch
        0x20 -> :sswitch_7
        0x80 -> :sswitch_27
        0x8000 -> :sswitch_3d
        0x10000 -> :sswitch_69
    .end sparse-switch
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3912
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x3b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    .line 3913
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 3911
    :cond_e
    return-void
.end method

.method public updateWindowsLocked(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 3816
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v6, :cond_d

    .line 3817
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    .line 3820
    :cond_d
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 3821
    .local v2, "oldWindowCount":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_25

    .line 3822
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 3821
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 3825
    :cond_25
    iput v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3826
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v6, :cond_2d

    .line 3827
    iput v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3835
    :cond_2d
    const/4 v0, 0x1

    .line 3837
    .local v0, "activeWindowGone":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 3838
    .local v4, "windowCount":I
    if-lez v4, :cond_8e

    .line 3839
    const/4 v1, 0x0

    :goto_35
    if-ge v1, v4, :cond_60

    .line 3840
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3841
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    .line 3842
    .local v5, "windowId":I
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 3843
    iput v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3844
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v6, :cond_5a

    .line 3845
    iput v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3846
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3851
    :cond_52
    :goto_52
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3839
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 3847
    :cond_5a
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v5, v6, :cond_52

    .line 3848
    const/4 v0, 0x0

    goto :goto_52

    .line 3854
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "windowId":I
    :cond_60
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v6, :cond_6a

    if-eqz v0, :cond_6a

    .line 3855
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    iput v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3860
    :cond_6a
    const/4 v1, 0x0

    :goto_6b
    if-ge v1, v4, :cond_8e

    .line 3861
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3862
    .restart local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v6, v7, :cond_80

    .line 3863
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3865
    :cond_80
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v6, v7, :cond_8b

    .line 3866
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3860
    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 3871
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_8e
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->notifyWindowsChanged()V

    .line 3815
    return-void
.end method

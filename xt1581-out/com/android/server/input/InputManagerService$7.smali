.class Lcom/android/server/input/InputManagerService$7;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHasSeenDeviceSpecificLayout:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$enabledLayoutDescriptors:[Ljava/lang/String;

.field final synthetic val$enabledLayouts:Ljava/util/ArrayList;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

.field final synthetic val$potentialLayouts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "val$enabledLayoutDescriptors"    # [Ljava/lang/String;
    .param p4, "val$identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1046
    .local p3, "val$enabledLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    .local p5, "val$potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayoutDescriptors:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayouts:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p5, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 10
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .prologue
    const/4 v5, -0x1

    .line 1054
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayoutDescriptors:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_5
    if-ge v1, v3, :cond_1e

    aget-object v0, v2, v1

    .line 1055
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1b

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1056
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    return-void

    .line 1054
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1064
    .end local v0    # "s":Ljava/lang/String;
    :cond_1e
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    if-ne v1, v2, :cond_48

    .line 1065
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v2

    if-ne v1, v2, :cond_48

    .line 1066
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    if-nez v1, :cond_42

    .line 1067
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    .line 1068
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1070
    :cond_42
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    :cond_47
    :goto_47
    return-void

    .line 1071
    :cond_48
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v1

    if-ne v1, v5, :cond_47

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v1

    if-ne v1, v5, :cond_47

    .line 1072
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    if-nez v1, :cond_47

    .line 1073
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47
.end method

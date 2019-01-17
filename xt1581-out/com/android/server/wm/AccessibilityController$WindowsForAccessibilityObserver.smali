.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mOldWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 938
    const-string/jumbo v0, "WindowManager"

    .line 937
    sput-object v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->LOG_TAG:Ljava/lang/String;

    .line 936
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 5
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 942
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    .line 947
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 949
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 951
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 953
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 955
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 957
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 959
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 973
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    .line 974
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 975
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 976
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 977
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 979
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 972
    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1231
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1232
    .local v3, "oldWindowCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1233
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    invoke-virtual {v4}, Landroid/view/WindowInfo;->recycle()V

    .line 1232
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1235
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1236
    .local v2, "newWindowCount":I
    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v2, :cond_31

    .line 1237
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    .line 1238
    .local v1, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-static {v1}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1230
    .end local v1    # "newWindow":Landroid/view/WindowInfo;
    :cond_31
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1289
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1290
    .local v1, "windowCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 1291
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1290
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1288
    :cond_14
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1179
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1180
    .local v2, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1181
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1182
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1185
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1186
    .local v3, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1187
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1190
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1191
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-static {p1, v0}, Lcom/android/server/wm/AccessibilityController;->-wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1192
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1195
    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    .line 1196
    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    .line 1195
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1177
    return-void
.end method

.method private static isReportedWindowType(I)Z
    .registers 3
    .param p0, "windowType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1296
    const/16 v1, 0x7ed

    if-eq p0, v1, :cond_2e

    .line 1297
    const/16 v1, 0x7dd

    if-eq p0, v1, :cond_2e

    .line 1298
    const/16 v1, 0x7e5

    if-eq p0, v1, :cond_2e

    .line 1299
    const/16 v1, 0x7ea

    if-eq p0, v1, :cond_2e

    .line 1300
    const/16 v1, 0x7e0

    if-eq p0, v1, :cond_2e

    .line 1301
    const/16 v1, 0x7e6

    if-eq p0, v1, :cond_2e

    .line 1302
    const/16 v1, 0x7e2

    if-eq p0, v1, :cond_2e

    .line 1303
    const/16 v1, 0x7eb

    if-eq p0, v1, :cond_2e

    .line 1304
    const/16 v1, 0x3ec

    if-eq p0, v1, :cond_2e

    .line 1305
    const/16 v1, 0x7df

    if-eq p0, v1, :cond_2e

    .line 1306
    const/16 v1, 0x7ee

    if-eq p0, v1, :cond_2e

    const/4 v0, 0x1

    .line 1296
    :cond_2e
    return v0
.end method

.method private static obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;
    .registers 9
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 1201
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v4

    .line 1202
    .local v4, "window":Landroid/view/WindowInfo;
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v5, v4, Landroid/view/WindowInfo;->type:I

    .line 1203
    iget v5, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, v4, Landroid/view/WindowInfo;->layer:I

    .line 1204
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 1205
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v5, v4, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 1206
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    iput v5, v4, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    .line 1208
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1209
    .local v0, "attachedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2e

    .line 1210
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1213
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    iput-boolean v5, v4, Landroid/view/WindowInfo;->focused:Z

    .line 1214
    iget-object v5, v4, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1216
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1217
    .local v2, "childCount":I
    if-lez v2, :cond_65

    .line 1218
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v5, :cond_4c

    .line 1219
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 1221
    :cond_4c
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4d
    if-ge v3, v2, :cond_65

    .line 1222
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1223
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 1227
    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v3    # "j":I
    :cond_65
    return-object v4
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1310
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1312
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 1313
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1314
    .local v2, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_25

    .line 1315
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1316
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1317
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1314
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1309
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_25
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .registers 7
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1243
    if-ne p1, p2, :cond_5

    .line 1244
    return v3

    .line 1246
    :cond_5
    if-nez p1, :cond_8

    .line 1247
    return v2

    .line 1249
    :cond_8
    if-nez p2, :cond_b

    .line 1250
    return v2

    .line 1252
    :cond_b
    iget v0, p1, Landroid/view/WindowInfo;->type:I

    iget v1, p2, Landroid/view/WindowInfo;->type:I

    if-eq v0, v1, :cond_12

    .line 1253
    return v2

    .line 1255
    :cond_12
    iget-boolean v0, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v1, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v0, v1, :cond_19

    .line 1256
    return v2

    .line 1258
    :cond_19
    iget-object v0, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_22

    .line 1259
    iget-object v0, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_2d

    .line 1260
    return v2

    .line 1262
    :cond_22
    iget-object v0, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1263
    return v2

    .line 1265
    :cond_2d
    iget-object v0, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v0, :cond_36

    .line 1266
    iget-object v0, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v0, :cond_41

    .line 1267
    return v2

    .line 1269
    :cond_36
    iget-object v0, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v1, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1270
    return v2

    .line 1272
    :cond_41
    iget-object v0, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1273
    return v2

    .line 1275
    :cond_4c
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_5e

    iget-object v0, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_5e

    .line 1276
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v1, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1279
    :cond_5e
    iget-object v0, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v1, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 1280
    return v2

    .line 1277
    :cond_69
    return v2

    .line 1282
    :cond_6a
    iget v0, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    iget v1, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    if-eq v0, v1, :cond_71

    .line 1283
    return v2

    .line 1285
    :cond_71
    return v3
.end method


# virtual methods
.method public computeChangedWindows()V
    .registers 30

    .prologue
    .line 999
    const/16 v25, 0x0

    .line 1000
    .local v25, "windowsChanged":Z
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v24, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1006
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1d9

    if-nez v26, :cond_24

    monitor-exit v27

    .line 1007
    return-void

    .line 1011
    :cond_24
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string/jumbo v28, "window"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 1010
    check-cast v22, Landroid/view/WindowManager;

    .line 1012
    .local v22, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v13, v0, Landroid/graphics/Point;->x:I

    .line 1014
    .local v13, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v12, v0, Landroid/graphics/Point;->y:I

    .line 1016
    .local v12, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    .line 1017
    .local v17, "unaccountedSpace":Landroid/graphics/Region;
    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v13, v12}, Landroid/graphics/Region;->set(IIII)Z

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    .line 1020
    .local v19, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1023
    .local v3, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1025
    const/4 v7, 0x0

    .line 1027
    .local v7, "focusedWindowAdded":Z
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 1028
    .local v18, "visibleWindowCount":I
    const/4 v14, -0x1

    .line 1029
    .local v14, "skipRemainingWindowsForTaskId":I
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1030
    .local v15, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v8, v18, -0x1

    .local v8, "i":I
    :goto_90
    if-ltz v8, :cond_12c

    .line 1031
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 1032
    .local v23, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1033
    .local v6, "flags":I
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16

    .line 1036
    .local v16, "task":Lcom/android/server/wm/Task;
    if-eqz v16, :cond_bf

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_bf

    .line 1030
    :cond_bc
    :goto_bc
    add-int/lit8 v8, v8, -0x1

    goto :goto_90

    .line 1041
    :cond_bf
    and-int/lit8 v26, v6, 0x10

    if-nez v26, :cond_bc

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1047
    .local v4, "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1050
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v26

    if-nez v26, :cond_bc

    .line 1055
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v26

    if-eqz v26, :cond_107

    .line 1057
    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v20

    .line 1058
    .local v20, "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1059
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v26

    if-eqz v26, :cond_107

    .line 1061
    const/4 v7, 0x1

    .line 1068
    .end local v20    # "window":Landroid/view/WindowInfo;
    :cond_107
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    .line 1069
    const/16 v28, 0x7f0

    .line 1068
    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_126

    .line 1071
    sget-object v26, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1070
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1075
    :cond_126
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_1c2

    .line 1096
    .end local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v6    # "flags":I
    .end local v16    # "task":Lcom/android/server/wm/Task;
    .end local v23    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_12c
    if-nez v7, :cond_163

    .line 1097
    add-int/lit8 v8, v18, -0x1

    :goto_130
    if-ltz v8, :cond_163

    .line 1098
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 1099
    .restart local v23    # "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v26

    if-eqz v26, :cond_1dc

    .line 1101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1102
    .restart local v4    # "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1105
    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v20

    .line 1107
    .restart local v20    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1108
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    .end local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v20    # "window":Landroid/view/WindowInfo;
    .end local v23    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_163
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v21

    .line 1116
    .local v21, "windowCount":I
    const/4 v8, 0x0

    :goto_168
    move/from16 v0, v21

    if-ge v8, v0, :cond_1e3

    .line 1117
    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowInfo;

    .line 1118
    .restart local v20    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_18a

    .line 1119
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1121
    :cond_18a
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1e0

    .line 1122
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    .line 1123
    .local v5, "childTokenCount":I
    add-int/lit8 v9, v5, -0x1

    .local v9, "j":I
    :goto_19e
    if-ltz v9, :cond_1e0

    .line 1124
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1bf

    .line 1125
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1123
    :cond_1bf
    add-int/lit8 v9, v9, -0x1

    goto :goto_19e

    .line 1080
    .end local v5    # "childTokenCount":I
    .end local v9    # "j":I
    .end local v20    # "window":Landroid/view/WindowInfo;
    .end local v21    # "windowCount":I
    .restart local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v6    # "flags":I
    .restart local v16    # "task":Lcom/android/server/wm/Task;
    .restart local v23    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1c2
    and-int/lit8 v26, v6, 0x28

    if-nez v26, :cond_bc

    .line 1082
    if-eqz v16, :cond_12c

    .line 1085
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1d7
    .catchall {:try_start_24 .. :try_end_1d7} :catchall_1d9

    goto/16 :goto_bc

    .line 1002
    .end local v3    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v4    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v6    # "flags":I
    .end local v7    # "focusedWindowAdded":Z
    .end local v8    # "i":I
    .end local v12    # "screenHeight":I
    .end local v13    # "screenWidth":I
    .end local v14    # "skipRemainingWindowsForTaskId":I
    .end local v15    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16    # "task":Lcom/android/server/wm/Task;
    .end local v17    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v18    # "visibleWindowCount":I
    .end local v19    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v22    # "windowManager":Landroid/view/WindowManager;
    .end local v23    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_1d9
    move-exception v26

    monitor-exit v27

    throw v26

    .line 1097
    .restart local v3    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .restart local v7    # "focusedWindowAdded":Z
    .restart local v8    # "i":I
    .restart local v12    # "screenHeight":I
    .restart local v13    # "screenWidth":I
    .restart local v14    # "skipRemainingWindowsForTaskId":I
    .restart local v15    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v17    # "unaccountedSpace":Landroid/graphics/Region;
    .restart local v18    # "visibleWindowCount":I
    .restart local v19    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .restart local v22    # "windowManager":Landroid/view/WindowManager;
    .restart local v23    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1dc
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_130

    .line 1116
    .end local v23    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v20    # "window":Landroid/view/WindowInfo;
    .restart local v21    # "windowCount":I
    :cond_1e0
    add-int/lit8 v8, v8, 0x1

    goto :goto_168

    .line 1132
    .end local v20    # "window":Landroid/view/WindowInfo;
    :cond_1e3
    :try_start_1e3
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    .line 1133
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_21c

    .line 1138
    const/16 v25, 0x1

    .line 1156
    :cond_1ff
    :goto_1ff
    if-eqz v25, :cond_208

    .line 1157
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V
    :try_end_208
    .catchall {:try_start_1e3 .. :try_end_208} :catchall_1d9

    :cond_208
    monitor-exit v27

    .line 1162
    if-eqz v25, :cond_218

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    .line 1174
    :cond_218
    invoke-static/range {v24 .. v24}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    .line 994
    return-void

    .line 1139
    :cond_21c
    :try_start_21c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_22e

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_1ff

    .line 1143
    :cond_22e
    const/4 v8, 0x0

    :goto_22f
    move/from16 v0, v21

    if-ge v8, v0, :cond_1ff

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowInfo;

    .line 1145
    .local v11, "oldWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowInfo;

    .line 1149
    .local v10, "newWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    :try_end_24e
    .catchall {:try_start_21c .. :try_end_24e} :catchall_1d9

    move-result v26

    if-eqz v26, :cond_254

    .line 1150
    const/16 v25, 0x1

    .line 1151
    goto :goto_1ff

    .line 1143
    :cond_254
    add-int/lit8 v8, v8, 0x1

    goto :goto_22f
.end method

.method public performComputeChangedWindowsNotLocked()V
    .registers 3

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 984
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 982
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 988
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 989
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 990
    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 989
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 987
    :cond_10
    return-void
.end method

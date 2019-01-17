.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
.super Landroid/os/Handler;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_PROVIDERS_CHANGED:I = 0x3

.field public static final MSG_NOTIFY_PROVIDER_CHANGED:I = 0x2

.field public static final MSG_NOTIFY_UPDATE_APP_WIDGET:I = 0x1

.field public static final MSG_NOTIFY_VIEW_DATA_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3421
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3422
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3421
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3427
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_72

    .line 3426
    :goto_5
    return-void

    .line 3429
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3430
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3431
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3432
    .local v3, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/widget/RemoteViews;

    .line 3433
    .local v5, "views":Landroid/widget/RemoteViews;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3434
    .local v6, "requestTime":J
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3435
    .local v4, "appWidgetId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3437
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static/range {v1 .. v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap9(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    goto :goto_5

    .line 3441
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v4    # "appWidgetId":I
    .end local v5    # "views":Landroid/widget/RemoteViews;
    .end local v6    # "requestTime":J
    :pswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3442
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3443
    .restart local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3444
    .restart local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3445
    .local v8, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3446
    .restart local v4    # "appWidgetId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3448
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1, v2, v3, v4, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap7(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_5

    .line 3452
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v4    # "appWidgetId":I
    .end local v8    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3453
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3454
    .restart local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3455
    .restart local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3457
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap8(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    goto :goto_5

    .line 3461
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    :pswitch_59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3462
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3463
    .restart local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3464
    .restart local v3    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3465
    .restart local v4    # "appWidgetId":I
    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3466
    .local v9, "viewId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3468
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1, v2, v3, v4, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap6(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V

    goto :goto_5

    .line 3427
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6
        :pswitch_29
        :pswitch_44
        :pswitch_59
    .end packed-switch
.end method

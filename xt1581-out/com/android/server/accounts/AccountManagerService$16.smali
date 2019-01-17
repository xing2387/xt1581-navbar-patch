.class Lcom/android/server/accounts/AccountManagerService$16;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->initFrpChecking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    .prologue
    .line 5644
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 5646
    const/4 v4, 0x0

    .line 5647
    .local v4, "frp":Z
    const/4 v7, 0x0

    .line 5648
    .local v7, "o":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 5650
    .local v5, "m":Ljava/lang/reflect/Method;
    :try_start_4
    const-string/jumbo v8, "com.google.android.gms.auth.frp.FrpClient"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5651
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 5652
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 5653
    const-string/jumbo v8, "isChallengeSupported"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 5654
    .local v6, "mm":Ljava/lang/reflect/Method;
    const-string/jumbo v8, "isChallengeRequired"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 5655
    .local v5, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 5656
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_5a} :catch_8e
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_5a} :catch_8e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_5a} :catch_8e
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_5a} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_5a} :catch_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_5a} :catch_71
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_5a} :catch_71

    move-result v4

    .line 5673
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "frp":Z
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "mm":Ljava/lang/reflect/Method;
    .end local v7    # "o":Ljava/lang/Object;
    :cond_5b
    :goto_5b
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    monitor-enter v9

    .line 5674
    :try_start_5e
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v8, v7}, Lcom/android/server/accounts/AccountManagerService;->-set0(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5675
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v8, v5}, Lcom/android/server/accounts/AccountManagerService;->-set1(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 5676
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v8, v4}, Lcom/android/server/accounts/AccountManagerService;->-set2(Lcom/android/server/accounts/AccountManagerService;Z)Z
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_db

    .line 5677
    if-nez v4, :cond_ac

    monitor-exit v9

    .line 5678
    return-void

    .line 5668
    .restart local v4    # "frp":Z
    :catch_71
    move-exception v2

    .line 5670
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "AccountManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FrpClient exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5671
    const/4 v4, 0x1

    goto :goto_5b

    .line 5660
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_8e
    move-exception v3

    .line 5662
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "AccountManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FrpClient unavailable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5663
    const/4 v7, 0x0

    .line 5664
    .restart local v7    # "o":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "m":Ljava/lang/reflect/Method;
    goto :goto_5b

    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "frp":Z
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v7    # "o":Ljava/lang/Object;
    :cond_ac
    monitor-exit v9

    .line 5682
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance v9, Lcom/android/server/accounts/AccountManagerService$SettingsObserver;

    iget-object v10, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v11, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v11}, Lcom/android/server/accounts/AccountManagerService;->-get3(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/server/accounts/AccountManagerService$SettingsObserver;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Handler;)V

    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->-set3(Lcom/android/server/accounts/AccountManagerService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 5684
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v8}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 5685
    const-string/jumbo v9, "user_setup_complete"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 5686
    iget-object v10, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService;->-get5(Lcom/android/server/accounts/AccountManagerService;)Landroid/database/ContentObserver;

    move-result-object v10

    const/4 v11, -0x1

    .line 5684
    invoke-virtual {v8, v9, v12, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5645
    return-void

    .line 5673
    :catchall_db
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.class Lcom/motorola/server/policy/FpcOneNavController;
.super Lcom/motorola/server/policy/OneNavController;
.source "FpcOneNavController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/policy/FpcOneNavController$Parameter;
    }
.end annotation


# static fields
.field private static final FPC_NAVIGATIONCONFIG_CLASS_NAME:Ljava/lang/String; = "com.fingerprints.service.NavigationConfig"

.field private static final FPC_NAVIGATION_CLASS_NAME:Ljava/lang/String; = "com.fingerprints.service.Navigation"

.field private static final TAG:Ljava/lang/String; = "FpcOneNavController"


# instance fields
.field private mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/motorola/server/policy/OneNavController;-><init>()V

    .line 21
    new-instance v0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/server/policy/FpcOneNavController$Parameter;-><init>(Lcom/motorola/server/policy/FpcOneNavController;Lcom/motorola/server/policy/FpcOneNavController$Parameter;)V

    iput-object v0, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    .line 20
    return-void
.end method


# virtual methods
.method public configNavigation(Ljava/lang/String;)Z
    .registers 14
    .param p1, "configStr"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    const-string/jumbo v7, "FpcOneNavController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "configNavigation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v7, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    invoke-virtual {v7, p1}, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->update(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 56
    return v10

    .line 60
    :cond_25
    :try_start_25
    const-string/jumbo v7, "com.fingerprints.service.NavigationConfig"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 61
    .local v4, "navConfigClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 62
    .local v5, "navConfigCtor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 64
    .local v6, "navConfigObj":Ljava/lang/Object;
    const-string/jumbo v7, "mSingleClickTimeMax"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 65
    .local v1, "f":Ljava/lang/reflect/Field;
    iget-object v7, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    iget v7, v7, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->SINGLE_CLICK_TIME_MAX:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 66
    const-string/jumbo v7, "mSingleClickTimeMin"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 67
    iget-object v7, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    iget v7, v7, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->SINGLE_CLICK_TIME_MIN:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 68
    const-string/jumbo v7, "mHoldClickTimeMin"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 69
    iget-object v7, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    iget v7, v7, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->LONG_CLICK_TIME_MIN:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 71
    const-string/jumbo v7, "mDirectionThresholdX"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 72
    iget-object v7, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    iget v7, v7, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->SINGLE_CLICK_MAX_MOVE_x:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 73
    const-string/jumbo v7, "mDirectionThresholdY"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    iget-object v7, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    iget v7, v7, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->SINGLE_CLICK_MAX_MOVE_y:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 76
    const-string/jumbo v7, "mImgMinMoveUp"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 77
    iget-object v7, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    iget v7, v7, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->IMG_MIN_MOVE_UP:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 78
    const-string/jumbo v7, "mImgMinMoveDown"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 79
    iget-object v7, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    iget v7, v7, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->IMG_MIN_MOVE_DOWN:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 80
    const-string/jumbo v7, "mImgMinMoveLeft"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 81
    iget-object v7, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    iget v7, v7, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->IMG_MIN_MOVE_LEFT:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 82
    const-string/jumbo v7, "mImgMinMoveRight"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 83
    iget-object v7, p0, Lcom/motorola/server/policy/FpcOneNavController;->mParameter:Lcom/motorola/server/policy/FpcOneNavController$Parameter;

    iget v7, v7, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->IMG_MIN_MOVE_RIGHT:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 85
    const-string/jumbo v7, "com.fingerprints.service.Navigation"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 86
    .local v3, "navClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "configNavigation"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 87
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_d9} :catch_da

    .line 93
    return v11

    .line 88
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "navClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "navConfigClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "navConfigCtor":Ljava/lang/reflect/Constructor;
    .end local v6    # "navConfigObj":Ljava/lang/Object;
    :catch_da
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "FpcOneNavController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to set navigation configuration!: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v10
.end method

.method public setNavigationEnabled(Z)Z
    .registers 13
    .param p1, "enabled"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 26
    const-string/jumbo v5, "FpcOneNavController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setNavigationEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :try_start_1c
    const-string/jumbo v5, "com.fingerprints.service.Navigation"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_22} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_65

    move-result-object v0

    .line 33
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_23
    const-string/jumbo v5, "setNavigationEnabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 34
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_23 .. :try_end_43} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_43} :catch_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_43} :catch_4f

    .line 48
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_43
    return v10

    .line 37
    :catch_44
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    :try_start_45
    const-string/jumbo v5, "FpcOneNavController"

    const-string/jumbo v6, "Failed to invoke setNavigationEnabled!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_45 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4e} :catch_65

    goto :goto_43

    .line 40
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v5, "FpcOneNavController"

    const-string/jumbo v6, "Not able to find class: com.fingerprints.service.Navigation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v9

    .line 35
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_5a
    move-exception v3

    .line 36
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_5b
    const-string/jumbo v5, "FpcOneNavController"

    const-string/jumbo v6, "Not able to find method in com.fingerprints.service.Navigation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_64} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_64} :catch_65

    goto :goto_43

    .line 43
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_65
    move-exception v2

    .line 44
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "FpcOneNavController"

    const-string/jumbo v6, "Not able to find method in com.fingerprints.service.Navigation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v9
.end method

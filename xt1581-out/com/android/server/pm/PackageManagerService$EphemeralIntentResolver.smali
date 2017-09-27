.class final Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EphemeralIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;",
        "Landroid/content/pm/EphemeralResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11533
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/IntentFilter;

    .prologue
    .line 11541
    check-cast p2, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    .end local p2    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    .prologue
    .line 11542
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 11536
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->newArray(I)[Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 11537
    new-array v0, p1, [Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;II)Landroid/content/pm/EphemeralResolveInfo;
    .registers 5
    .param p1, "info"    # Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    .line 11548
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 11549
    const/4 v0, 0x0

    return-object v0

    .line 11551
    :cond_a
    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->getEphemeralResolveInfo()Landroid/content/pm/EphemeralResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 5
    .param p1, "info"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    .line 11546
    check-cast p1, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    .end local p1    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->newResult(Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;II)Landroid/content/pm/EphemeralResolveInfo;

    move-result-object v0

    return-object v0
.end method

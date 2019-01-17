.class public abstract Lcom/motorola/server/policy/OneNavController;
.super Ljava/lang/Object;
.source "OneNavController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneNavController"

.field private static volatile sInstance:Lcom/motorola/server/policy/OneNavController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/server/policy/OneNavController;->sInstance:Lcom/motorola/server/policy/OneNavController;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/motorola/server/policy/OneNavController;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/motorola/server/policy/OneNavController;->sInstance:Lcom/motorola/server/policy/OneNavController;

    if-nez v0, :cond_b

    .line 16
    new-instance v0, Lcom/motorola/server/policy/FpcOneNavController;

    invoke-direct {v0}, Lcom/motorola/server/policy/FpcOneNavController;-><init>()V

    sput-object v0, Lcom/motorola/server/policy/OneNavController;->sInstance:Lcom/motorola/server/policy/OneNavController;

    .line 19
    :cond_b
    sget-object v0, Lcom/motorola/server/policy/OneNavController;->sInstance:Lcom/motorola/server/policy/OneNavController;

    return-object v0
.end method

.method protected static setInstance(Lcom/motorola/server/policy/OneNavController;)V
    .registers 1
    .param p0, "controller"    # Lcom/motorola/server/policy/OneNavController;

    .prologue
    .line 23
    sput-object p0, Lcom/motorola/server/policy/OneNavController;->sInstance:Lcom/motorola/server/policy/OneNavController;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract configNavigation(Ljava/lang/String;)Z
.end method

.method public abstract setNavigationEnabled(Z)Z
.end method

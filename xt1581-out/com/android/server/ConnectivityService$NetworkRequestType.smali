.class final enum Lcom/android/server/ConnectivityService$NetworkRequestType;
.super Ljava/lang/Enum;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetworkRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ConnectivityService$NetworkRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ConnectivityService$NetworkRequestType;

.field public static final enum LISTEN:Lcom/android/server/ConnectivityService$NetworkRequestType;

.field public static final enum REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

.field public static final enum TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3883
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestType;

    const-string/jumbo v1, "LISTEN"

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$NetworkRequestType;->LISTEN:Lcom/android/server/ConnectivityService$NetworkRequestType;

    .line 3884
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestType;

    const-string/jumbo v1, "TRACK_DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ConnectivityService$NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$NetworkRequestType;->TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;

    .line 3885
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestType;

    const-string/jumbo v1, "REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService$NetworkRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    .line 3882
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/ConnectivityService$NetworkRequestType;

    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->LISTEN:Lcom/android/server/ConnectivityService$NetworkRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/ConnectivityService$NetworkRequestType;->$VALUES:[Lcom/android/server/ConnectivityService$NetworkRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 3882
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3882
    const-class v0, Lcom/android/server/ConnectivityService$NetworkRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ConnectivityService$NetworkRequestType;
    .registers 1

    .prologue
    .line 3882
    sget-object v0, Lcom/android/server/ConnectivityService$NetworkRequestType;->$VALUES:[Lcom/android/server/ConnectivityService$NetworkRequestType;

    return-object v0
.end method

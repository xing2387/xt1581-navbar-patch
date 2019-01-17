.class public final Lcom/google/android/gms/internal/ns;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static RG:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ns;->RG:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static L(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static bA(I)I
    .registers 2

    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static bB(I)I
    .registers 2

    rem-int/lit16 v0, p0, 0x3e8

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static bC(I)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ns;->bB(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.class Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallParams"
.end annotation


# instance fields
.field installerPackageName:Ljava/lang/String;

.field sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field userId:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 1015
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>()V

    return-void
.end method

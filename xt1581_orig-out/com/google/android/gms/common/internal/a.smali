.class public Lcom/google/android/gms/common/internal/a;
.super Lcom/google/android/gms/common/internal/o$a;
.source "Unknown"


# instance fields
.field private DD:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/o$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->DD:Landroid/accounts/Account;

    return-void
.end method

.method public static bc(Ljava/lang/String;)Lcom/google/android/gms/common/internal/a;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "com.google"

    invoke-direct {v0, p0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    new-instance v1, Lcom/google/android/gms/common/internal/a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/accounts/Account;)V

    return-object v1

    :cond_14
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public in()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->DD:Landroid/accounts/Account;

    return-object v0
.end method

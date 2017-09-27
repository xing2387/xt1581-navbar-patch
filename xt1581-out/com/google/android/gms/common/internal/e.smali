.class public Lcom/google/android/gms/common/internal/e;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final PA:I

.field private final Pz:Landroid/support/v4/app/Fragment;

.field private final mIntent:Landroid/content/Intent;

.field private final nK:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e;->nK:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->Pz:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/e;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/gms/common/internal/e;->PA:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/e;->nK:Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e;->Pz:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/e;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/gms/common/internal/e;->PA:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_c

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_25

    :goto_8
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->Pz:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->Pz:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/e;->PA:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_8

    :catch_1a
    move-exception v0

    const-string/jumbo v0, "SettingsRedirect"

    const-string/jumbo v1, "Can\'t redirect to app settings for Google Play services"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->nK:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/e;->PA:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_2e} :catch_1a

    goto :goto_8
.end method

.class Lcom/google/android/gms/common/api/h$c;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final NN:I

.field private final NO:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic NP:Lcom/google/android/gms/common/api/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/h;ILcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/api/h$c;->NP:Lcom/google/android/gms/common/api/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/h$c;->NN:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/h$c;->NO:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/h$c;->NO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/common/api/h$c;->NO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/gms/common/api/h$c;->NP:Lcom/google/android/gms/common/api/h;

    iget v1, p0, Lcom/google/android/gms/common/api/h$c;->NN:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/h$c;->NO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/h;ILcom/google/android/gms/common/ConnectionResult;)V

    :goto_1d
    return-void

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/gms/common/api/h$c;->NP:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/h$c;->NP:Lcom/google/android/gms/common/api/h;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/h$c;->NO:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/google/android/gms/common/api/h$c;->NP:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_43
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1e .. :try_end_43} :catch_44

    goto :goto_1d

    :catch_44
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/h$c;->NP:Lcom/google/android/gms/common/api/h;

    invoke-static {v0}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/h;)V

    goto :goto_1d

    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/common/api/h$c;->NO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/h$c;->NP:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/h$c;->NP:Lcom/google/android/gms/common/api/h;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/common/api/h$c;->NP:Lcom/google/android/gms/common/api/h;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_1d
.end method

.class public Lcom/google/android/gms/common/api/h;
.super Landroid/support/v4/app/Fragment;
.source "Unknown"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/h$1;,
        Lcom/google/android/gms/common/api/h$a;,
        Lcom/google/android/gms/common/api/h$b;,
        Lcom/google/android/gms/common/api/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gms/common/ConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private NE:Z

.field private NF:I

.field private NG:Lcom/google/android/gms/common/ConnectionResult;

.field private final NH:Landroid/os/Handler;

.field private final NI:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/common/api/h$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/h;->NF:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->NH:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/h;
    .registers 5

    const-string/jumbo v0, "Must be called from main thread of process"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->bd(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    :try_start_a
    const-string/jumbo v0, "GmsSupportLifecycleFragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_13} :catch_2c

    if-nez v0, :cond_36

    :cond_15
    new-instance v0, Lcom/google/android/gms/common/api/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h;-><init>()V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string/jumbo v3, "GmsSupportLifecycleFragment"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_36
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_2b
.end method

.method private a(ILcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/h;->NE:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/h;->NE:Z

    iput p1, p0, Lcom/google/android/gms/common/api/h;->NF:I

    iput-object p2, p0, Lcom/google/android/gms/common/api/h;->NG:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->NH:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/h$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/common/api/h$c;-><init>(Lcom/google/android/gms/common/api/h;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/h;->hT()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/h;ILcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/h;->b(ILcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private aX(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/api/h;->NF:I

    if-eq p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/common/api/h;->hT()V

    goto :goto_4
.end method

.method private b(ILcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    const-string/jumbo v0, "GmsSupportLifecycleFragment"

    const-string/jumbo v1, "Unresolved error while connecting client. Stopping auto-manage."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h$b;

    if-nez v0, :cond_17

    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/google/android/gms/common/api/h;->hT()V

    return-void

    :cond_17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/h;->aV(I)V

    iget-object v0, v0, Lcom/google/android/gms/common/api/h$b;->NM:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    if-eqz v0, :cond_13

    invoke-interface {v0, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_13
.end method

.method private hT()V
    .registers 6

    const/4 v0, 0x0

    const/4 v4, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/h;->NE:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/h;->NF:I

    iput-object v4, p0, Lcom/google/android/gms/common/api/h;->NG:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    :goto_d
    iget-object v2, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_16

    return-void

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/h;->aW(I)Lcom/google/android/gms/common/api/h$a;

    move-result-object v3

    if-nez v3, :cond_28

    :goto_22
    invoke-virtual {v1, v2, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_28
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/h$a;->hU()V

    goto :goto_22
.end method


# virtual methods
.method public a(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string/jumbo v1, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v1}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_38

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Already managing a GoogleApiClient with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/h$b;

    invoke-direct {v0, p2, p3, v3}, Lcom/google/android/gms/common/api/h$b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/api/h$1;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3a

    :goto_37
    return-void

    :cond_38
    const/4 v0, 0x1

    goto :goto_10

    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_37
.end method

.method public a(Landroid/support/v4/content/Loader;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/h;->a(ILcom/google/android/gms/common/ConnectionResult;)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/h;->aX(I)V

    goto :goto_d
.end method

.method public aU(I)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    return-object v1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/h;->aW(I)Lcom/google/android/gms/common/api/h$a;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/common/api/h$a;->NJ:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public aV(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method aW(I)Lcom/google/android/gms/common/api/h$a;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h$a;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unknown loader in SupportLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_24

    :cond_5
    :goto_5
    if-nez v0, :cond_1f

    iget v0, p0, Lcom/google/android/gms/common/api/h;->NF:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->NG:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/api/h;->b(ILcom/google/android/gms/common/ConnectionResult;)V

    :goto_e
    return-void

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_5

    :cond_19
    move v0, v1

    goto :goto_5

    :pswitch_1b
    const/4 v2, -0x1

    if-eq p2, v2, :cond_19

    goto :goto_5

    :cond_1f
    invoke-direct {p0}, Lcom/google/android/gms/common/api/h;->hT()V

    goto :goto_e

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/h;->aW(I)Lcom/google/android/gms/common/api/h$a;

    move-result-object v3

    if-nez v3, :cond_26

    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :goto_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h$b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/h$b;->NJ:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v3, v3, Lcom/google/android/gms/common/api/h$a;->NJ:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eq v0, v3, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_22
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/common/api/h;->NF:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->NG:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/api/h;->b(ILcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-string/jumbo v0, "resolving_error"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/h;->NE:Z

    const-string/jumbo v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/h;->NF:I

    iget v0, p0, Lcom/google/android/gms/common/api/h;->NF:I

    if-ltz v0, :cond_6

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string/jumbo v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/h;->NG:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_6
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/common/api/h$a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h$b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/h$b;->NJ:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/h$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-object v1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/h;->a(Landroid/support/v4/content/Loader;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/api/h;->NF:I

    if-eq v0, v1, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/common/api/h;->hT()V

    goto :goto_8
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "resolving_error"

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/h;->NE:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/common/api/h;->NF:I

    if-gez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    const-string/jumbo v0, "failed_client_id"

    iget v1, p0, Lcom/google/android/gms/common/api/h;->NF:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "failed_status"

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->NG:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "failed_resolution"

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->NG:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_f
.end method

.method public onStart()V
    .registers 5

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/h;->NE:Z

    if-eqz v1, :cond_19

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    add-int/lit8 v0, v0, 0x1

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->NI:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    goto :goto_8
.end method

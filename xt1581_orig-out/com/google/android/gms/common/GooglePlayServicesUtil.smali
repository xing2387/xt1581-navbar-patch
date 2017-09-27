.class public final Lcom/google/android/gms/common/GooglePlayServicesUtil;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/GooglePlayServicesUtil$a;
    }
.end annotation


# static fields
.field public static final GMS_ERROR_DIALOG:Ljava/lang/String; = "GooglePlayServicesErrorDialog"

.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I = 0x6768a8

.field public static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field public static Me:Z

.field public static Mf:Z

.field private static Mg:I

.field private static final Mh:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Me:Z

    sput-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Mf:Z

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Mg:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Mh:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static C(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->aR(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "GooglePlayServicesUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GooglePlayServices not available due to error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_30

    new-instance v2, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    const-string/jumbo v3, "Google Play Services not available"

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw v2

    :cond_30
    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v1
.end method

.method private static D(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_1c

    move-result-object v0

    :goto_f
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "GooglePlayServicesUtil"

    const-string/jumbo v3, "This should never happen."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_f

    :cond_28
    const-string/jumbo v1, "com.google.android.gms.version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x6768a8

    if-eq v0, v1, :cond_71

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected 6777000 but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".  You must have the"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " following declaration within the <application> element: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    <meta-data android:name=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "com.google.android.gms.version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    return-void
.end method

.method private static E(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesUtil$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static F(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x28c4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private static G(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_22} :catch_2e

    move-result-object v1

    :goto_23
    if-eqz v1, :cond_d

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :catch_2e
    move-exception v3

    goto :goto_23
.end method

.method private static a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .registers 10

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ns;->L(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_7
    :goto_7
    invoke-static {}, Lcom/google/android/gms/internal/ob;->ju()Z

    move-result v0

    if-nez v0, :cond_52

    :cond_d
    move-object v0, v2

    :goto_e
    if-eqz v0, :cond_7c

    :goto_10
    invoke-static {p1, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-nez p4, :cond_82

    :goto_19
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->aR(I)Landroid/content/Intent;

    move-result-object v3

    if-eqz p2, :cond_86

    new-instance v1, Lcom/google/android/gms/common/internal/e;

    invoke-direct {v1, p2, v3, p3}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    :goto_24
    invoke-static {p1, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8c

    :goto_2a
    packed-switch p0, :pswitch_data_128

    :pswitch_2d
    const-string/jumbo v1, "GooglePlayServicesUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_4c
    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/16 p0, 0x2a

    goto :goto_7

    :cond_52
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Theme.Dialog.Alert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_e

    :cond_7c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_10

    :cond_82
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_19

    :cond_86
    new-instance v1, Lcom/google/android/gms/common/internal/e;

    invoke-direct {v1, p1, v3, p3}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_24

    :cond_8c
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2a

    :pswitch_90
    return-object v2

    :pswitch_91
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_96
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_a1
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_ac
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_b7
    sget v1, Lcom/google/android/gms/R$string;->common_android_wear_update_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_c2
    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services is invalid. Cannot recover."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_d6
    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Network error occurred. Please retry request later."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_ea
    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Internal error occurred. Please see logs for detailed information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_f8
    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Developer error occurred. Please see logs for detailed information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_106
    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_11a
    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "The application is not licensed to the user."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_ac
        :pswitch_a1
        :pswitch_91
        :pswitch_106
        :pswitch_91
        :pswitch_d6
        :pswitch_ea
        :pswitch_c2
        :pswitch_f8
        :pswitch_11a
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_b7
    .end packed-switch
.end method

.method private static a(ILandroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a(ILandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(ILandroid/content/Context;Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_error_notification_requested_by_msg:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v5}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/internal/ns;->L(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_51

    sget v4, Lcom/google/android/gms/R$string;->common_google_play_services_notification_ticker:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/app/Notification;

    const v5, 0x108008a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v5, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_3d
    move-object v1, v0

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez p2, :cond_a2

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorNotificationId(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_50
    return-void

    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/ob;->jv()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/u;->L(Z)V

    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/google/android/gms/R$drawable;->common_ic_googleplayservices:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$drawable;->common_full_open_on_phone:I

    sget v4, Lcom/google/android/gms/R$string;->common_open_on_phone:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_3d

    :cond_a2
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorNotificationId(I)I

    move-result v2

    invoke-virtual {v0, p2, v2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_50
.end method

.method public static a(Landroid/content/res/Resources;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1e

    move v0, v1

    :goto_10
    invoke-static {}, Lcom/google/android/gms/internal/ob;->jr()Z

    move-result v3

    if-nez v3, :cond_20

    :cond_16
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_1c
    return v1

    :cond_1d
    return v1

    :cond_1e
    move v0, v2

    goto :goto_10

    :cond_20
    if-eqz v0, :cond_16

    :cond_22
    move v1, v2

    goto :goto_1c
.end method

.method public static aR(I)Landroid/content/Intent;
    .registers 2

    sparse-switch p0, :sswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "com.google.android.gms"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->bl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :sswitch_d
    invoke-static {}, Lcom/google/android/gms/common/internal/m;->iH()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "com.google.android.gms"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->bj(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_12
        0x2a -> :sswitch_d
    .end sparse-switch
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sparse-switch p1, :sswitch_data_50

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :sswitch_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_1f

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_1f
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_26
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_2d
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_34
    sget v1, Lcom/google/android/gms/R$string;->common_android_wear_update_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_3b
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_42
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_49
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_26
        0x5 -> :sswitch_49
        0x7 -> :sswitch_42
        0x9 -> :sswitch_3b
        0x2a -> :sswitch_34
    .end sparse-switch
.end method

.method static synthetic b(ILandroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a(ILandroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/pm/PackageManager;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Mh:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    sget v3, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Mg:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_10

    :goto_a
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_37

    sget v2, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Mg:I

    if-nez v2, :cond_3e

    :goto_f
    return v0

    :cond_10
    :try_start_10
    const-string/jumbo v3, "com.google.android.gms"

    const/16 v4, 0x40

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/d;->hB()Lcom/google/android/gms/common/d;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/common/b$a;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/gms/common/b;->LW:[Lcom/google/android/gms/common/b$a;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/common/d;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/b$a;)Lcom/google/android/gms/common/b$a;

    move-result-object v3

    if-nez v3, :cond_3a

    const/4 v3, 0x0

    sput v3, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Mg:I
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_31} :catch_32
    .catchall {:try_start_10 .. :try_end_31} :catchall_37

    goto :goto_a

    :catch_32
    move-exception v3

    const/4 v3, 0x0

    :try_start_34
    sput v3, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Mg:I

    goto :goto_a

    :catchall_37
    move-exception v0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_37

    throw v0

    :cond_3a
    const/4 v3, 0x1

    :try_start_3b
    sput v3, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Mg:I
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_3d} :catch_32
    .catchall {:try_start_3b .. :try_end_3d} :catchall_37

    goto :goto_a

    :cond_3e
    move v0, v1

    goto :goto_f
.end method

.method public static b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/d;->hB()Lcom/google/android/gms/common/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/d;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/res/Resources;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ob;->jt()Z

    move-result v2

    if-nez v2, :cond_c

    return v0

    :cond_c
    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-le v2, v3, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static c(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sparse-switch p1, :sswitch_data_24

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :sswitch_f
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :sswitch_16
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :sswitch_1d
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_16
        0x2a -> :sswitch_1d
    .end sparse-switch
.end method

.method public static c(Landroid/content/pm/PackageManager;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->b(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->hA()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_8
.end method

.method public static d(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sparse-switch p1, :sswitch_data_40

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :sswitch_e
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_notification_needs_installation_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_15
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_notification_needs_update_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_1c
    sget v1, Lcom/google/android/gms/R$string;->common_android_wear_notification_needs_update_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_23
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_needs_enabling_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_2a
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_31
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :sswitch_38
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_15
        0x3 -> :sswitch_23
        0x5 -> :sswitch_38
        0x7 -> :sswitch_31
        0x9 -> :sswitch_2a
        0x2a -> :sswitch_1c
    .end sparse-switch
.end method

.method public static e(Landroid/content/Context;I)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eq p1, v4, :cond_5

    :cond_4
    :goto_4
    return v3

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ob;->jA()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_f
    const-string/jumbo v1, "com.google.android.gms"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1a} :catch_47

    if-eqz v0, :cond_4

    return v4

    :cond_1d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v4

    :catch_47
    move-exception v0

    goto :goto_4
.end method

.method public static getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected static getErrorNotificationId(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_a

    :sswitch_3
    const v0, 0x9b6d

    return v0

    :sswitch_7
    const/16 v0, 0x28c4

    return v0

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_3
        0x3 -> :sswitch_7
        0x2a -> :sswitch_3
    .end sparse-switch
.end method

.method public static getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->aR(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e

    const/high16 v1, 0x10000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_e
    return-object v1
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_38

    const-string/jumbo v0, "UNKNOWN_ERROR_CODE"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "SUCCESS"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "SERVICE_MISSING"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "SERVICE_DISABLED"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "INVALID_ACCOUNT"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "NETWORK_ERROR"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "INTERNAL_ERROR"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "SERVICE_INVALID"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "DEVELOPER_ERROR"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "LICENSE_CHECK_FAILED"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
    .end packed-switch
.end method

.method public static getOpenSourceSoftwareLicenseInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "oss_notice"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_45

    move-result-object v1

    :try_start_2e
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v2, "\\A"

    invoke-virtual {v0, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/util/NoSuchElementException; {:try_start_2e .. :try_end_3d} :catch_47
    .catchall {:try_start_2e .. :try_end_3d} :catchall_4f

    move-result-object v0

    if-nez v1, :cond_41

    :goto_40
    return-object v0

    :cond_41
    :try_start_41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_40

    :catch_45
    move-exception v0

    return-object v3

    :catch_47
    move-exception v0

    if-nez v1, :cond_4b

    :goto_4a
    return-object v3

    :cond_4b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_4a

    :catchall_4f
    move-exception v0

    if-nez v1, :cond_53

    :goto_52
    throw v0

    :cond_53
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_56} :catch_45

    goto :goto_52
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    :try_start_0
    const-string/jumbo v0, "com.google.android.gms"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    return-object v0

    :catch_c
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static hA()Z
    .registers 2

    sget-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Me:Z

    if-nez v0, :cond_e

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_e
    sget-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Mf:Z

    return v0
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .registers 9

    const/4 v7, 0x1

    const/16 v6, 0x9

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/gms/common/internal/c;->Px:Z

    if-eqz v1, :cond_49

    :goto_c
    sget-boolean v1, Lcom/google/android/gms/common/internal/c;->Px:Z

    if-eqz v1, :cond_5e

    :goto_10
    :try_start_10
    const-string/jumbo v1, "com.google.android.gms"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_18} :catch_62

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/common/d;->hB()Lcom/google/android/gms/common/d;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ns;->bC(I)Z

    move-result v3

    if-eqz v3, :cond_6d

    :cond_25
    sget-object v3, Lcom/google/android/gms/common/b$ao;->Md:[Lcom/google/android/gms/common/b$a;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/d;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/b$a;)Lcom/google/android/gms/common/b$a;

    move-result-object v2

    if-eqz v2, :cond_98

    :cond_2d
    const v2, 0x6768a8

    invoke-static {v2}, Lcom/google/android/gms/internal/ns;->bA(I)I

    move-result v2

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ns;->bA(I)I

    move-result v3

    if-lt v3, v2, :cond_b7

    :try_start_3c
    const-string/jumbo v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_43} :catch_d5

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_e3

    return v5

    :cond_49
    :try_start_49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_c

    :catch_53
    move-exception v1

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_5e
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->D(Landroid/content/Context;)V

    goto :goto_10

    :catch_62
    move-exception v0

    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play services is missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6d
    invoke-static {p0}, Lcom/google/android/gms/internal/ns;->L(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_25

    :try_start_73
    const-string/jumbo v3, "com.android.vending"

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_7b} :catch_a2

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/b$ao;->Md:[Lcom/google/android/gms/common/b$a;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/d;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/b$a;)Lcom/google/android/gms/common/b$a;

    move-result-object v3

    if-eqz v3, :cond_ad

    new-array v4, v7, [Lcom/google/android/gms/common/b$a;

    aput-object v3, v4, v5

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/common/d;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/b$a;)Lcom/google/android/gms/common/b$a;

    move-result-object v2

    if-nez v2, :cond_2d

    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play services signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_98
    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play services signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_a2
    move-exception v0

    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play Store is missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_ad
    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play Store signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_b7
    const-string/jumbo v0, "GooglePlayServicesUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Google Play services out of date.  Requires 6777000 but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :catch_d5
    move-exception v0

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services missing when getting application info."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v7

    :cond_e3
    const/4 v0, 0x3

    return v0
.end method

.method public static isUserRecoverableError(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static showErrorDialogFragment(ILandroid/app/Activity;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v0

    return v0
.end method

.method public static showErrorDialogFragment(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v0

    return v0
.end method

.method public static showErrorDialogFragment(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1a

    :try_start_7
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;
    :try_end_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_9} :catch_1b

    :goto_9
    if-nez v0, :cond_1d

    invoke-static {}, Lcom/google/android/gms/internal/ob;->jr()Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This Activity does not support Fragments."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    return v0

    :catch_1b
    move-exception v2

    goto :goto_9

    :cond_1d
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, p4}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/SupportErrorDialogFragment;

    move-result-object v1

    const-string/jumbo v2, "GooglePlayServicesErrorDialog"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_2d
    const/4 v0, 0x1

    return v0

    :cond_2f
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, p4}, Lcom/google/android/gms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object v1

    const-string/jumbo v2, "GooglePlayServicesErrorDialog"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public static showErrorNotification(ILandroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ns;->L(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_6
    :goto_6
    invoke-static {p1, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->e(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a(ILandroid/content/Context;)V

    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    const/16 p0, 0x2a

    goto :goto_6

    :cond_16
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->E(Landroid/content/Context;)V

    goto :goto_f
.end method

.class public Lcom/google/android/gms/common/d;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final Mi:Ljava/lang/Object;

.field private static final Mj:Lcom/google/android/gms/common/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/d;->Mi:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/d;->Mj:Lcom/google/android/gms/common/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;Z)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-ne v0, v2, :cond_2b

    new-instance v1, Lcom/google/android/gms/common/b$b;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/b$b;-><init>([B)V

    if-nez p2, :cond_35

    invoke-static {}, Lcom/google/android/gms/common/b;->hy()Ljava/util/Set;

    move-result-object v0

    :goto_1a
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "GoogleSignatureVerifier"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3b

    :goto_2a
    return v4

    :cond_2b
    const-string/jumbo v0, "GoogleSignatureVerifier"

    const-string/jumbo v1, "Package has more than one signature."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_35
    invoke-static {}, Lcom/google/android/gms/common/b;->hx()Ljava/util/Set;

    move-result-object v0

    goto :goto_1a

    :cond_3a
    return v2

    :cond_3b
    const-string/jumbo v0, "GoogleSignatureVerifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Signature not valid.  Found: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/common/b$a;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public static hB()Lcom/google/android/gms/common/d;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/d;->Mj:Lcom/google/android/gms/common/d;

    return-object v0
.end method


# virtual methods
.method varargs a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/b$a;)Lcom/google/android/gms/common/b$a;
    .registers 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    new-instance v2, Lcom/google/android/gms/common/b$b;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/b$b;-><init>([B)V

    move v0, v1

    :goto_16
    array-length v3, p2

    if-lt v0, v3, :cond_2e

    const-string/jumbo v0, "GoogleSignatureVerifier"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3c

    :goto_23
    return-object v5

    :cond_24
    const-string/jumbo v0, "GoogleSignatureVerifier"

    const-string/jumbo v1, "Package has more than one signature."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2e
    aget-object v3, p2, v0

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/b$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_39
    aget-object v0, p2, v0

    return-object v0

    :cond_3c
    const-string/jumbo v0, "GoogleSignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Signature not valid.  Found: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/b$a;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->c(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/common/d;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_10
    :goto_10
    return v0

    :cond_11
    return v1

    :cond_12
    invoke-direct {p0, p2, v2}, Lcom/google/android/gms/common/d;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    return v0

    :cond_17
    invoke-direct {p0, p2, v2}, Lcom/google/android/gms/common/d;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "GoogleSignatureVerifier"

    const-string/jumbo v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 7

    const/4 v3, 0x0

    const/16 v0, 0x40

    :try_start_3
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_6} :catch_c

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/d;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0

    :catch_c
    move-exception v0

    const-string/jumbo v0, "GoogleSignatureVerifier"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_18

    :goto_17
    return v3

    :cond_18
    const-string/jumbo v0, "GoogleSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package manager can\'t find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", defaulting to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

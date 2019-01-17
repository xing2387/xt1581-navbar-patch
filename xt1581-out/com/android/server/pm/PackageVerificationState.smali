.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mExtendedTimeout:Z

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .registers 4
    .param p1, "requiredVerifierUid"    # I
    .param p2, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    .line 58
    iput-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 59
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 56
    return-void
.end method


# virtual methods
.method public addSufficientVerifier(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 72
    return-void
.end method

.method public extendTimeout()V
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    if-nez v0, :cond_7

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 156
    :cond_7
    return-void
.end method

.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method public isInstallAllowed()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v0, :cond_6

    .line 143
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_d

    .line 147
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    return v0

    .line 150
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public isVerificationComplete()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-nez v0, :cond_6

    .line 125
    return v1

    .line 128
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 129
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    return v0
.end method

.method public setVerifierResponse(II)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 84
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    if-ne p1, v0, :cond_16

    .line 85
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 86
    packed-switch p2, :pswitch_data_36

    .line 94
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 96
    :goto_d
    return v1

    .line 88
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 91
    :pswitch_13
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_d

    .line 98
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 99
    if-ne p2, v1, :cond_24

    .line 100
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    .line 104
    :cond_24
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_33

    .line 106
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 109
    :cond_33
    return v1

    .line 113
    :cond_34
    return v2

    .line 86
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method

.method public timeoutExtended()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return v0
.end method

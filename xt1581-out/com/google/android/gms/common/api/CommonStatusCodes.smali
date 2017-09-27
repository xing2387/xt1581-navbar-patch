.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final CANCELED:I = 0x10

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_74

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "SUCCESS_CACHE"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "SUCCESS"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "SERVICE_MISSING"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "SERVICE_DISABLED"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "INVALID_ACCOUNT"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "NETWORK_ERROR"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "INTERNAL_ERROR"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "SERVICE_INVALID"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "DEVELOPER_ERROR"

    return-object v0

    :sswitch_48
    const-string/jumbo v0, "LICENSE_CHECK_FAILED"

    return-object v0

    :sswitch_4c
    const-string/jumbo v0, "ERROR_OPERATION_FAILED"

    return-object v0

    :sswitch_50
    const-string/jumbo v0, "INTERRUPTED"

    return-object v0

    :sswitch_54
    const-string/jumbo v0, "TIMEOUT"

    return-object v0

    :sswitch_58
    const-string/jumbo v0, "CANCELED"

    return-object v0

    :sswitch_5c
    const-string/jumbo v0, "AUTH_API_INVALID_CREDENTIALS"

    return-object v0

    :sswitch_60
    const-string/jumbo v0, "AUTH_API_ACCESS_FORBIDDEN"

    return-object v0

    :sswitch_64
    const-string/jumbo v0, "AUTH_API_CLIENT_ERROR"

    return-object v0

    :sswitch_68
    const-string/jumbo v0, "AUTH_API_SERVER_ERROR"

    return-object v0

    :sswitch_6c
    const-string/jumbo v0, "AUTH_TOKEN_ERROR"

    return-object v0

    :sswitch_70
    const-string/jumbo v0, "AUTH_URL_RESOLUTION"

    return-object v0

    :sswitch_data_74
    .sparse-switch
        -0x1 -> :sswitch_18
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_20
        0x2 -> :sswitch_24
        0x3 -> :sswitch_28
        0x4 -> :sswitch_2c
        0x5 -> :sswitch_30
        0x6 -> :sswitch_34
        0x7 -> :sswitch_38
        0x8 -> :sswitch_3c
        0x9 -> :sswitch_40
        0xa -> :sswitch_44
        0xb -> :sswitch_48
        0xd -> :sswitch_4c
        0xe -> :sswitch_50
        0xf -> :sswitch_54
        0x10 -> :sswitch_58
        0xbb8 -> :sswitch_5c
        0xbb9 -> :sswitch_60
        0xbba -> :sswitch_64
        0xbbb -> :sswitch_68
        0xbbc -> :sswitch_6c
        0xbbd -> :sswitch_70
    .end sparse-switch
.end method

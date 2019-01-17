.class public Lcom/motorola/server/Haptic;
.super Ljava/lang/Object;
.source "Haptic.java"


# static fields
.field public static final HAPTIC_EFFECT_INDEX_MAX:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "Haptic"

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/server/Haptic;->sInitialized:Z

    .line 24
    const-string/jumbo v0, "mot_haptic"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 3

    .prologue
    .line 119
    sget-boolean v1, Lcom/motorola/server/Haptic;->sInitialized:Z

    if-nez v1, :cond_a

    .line 121
    :try_start_4
    invoke-static {}, Lcom/motorola/server/Haptic;->initialize()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_7} :catch_b

    .line 125
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_7
    const/4 v1, 0x1

    sput-boolean v1, Lcom/motorola/server/Haptic;->sInitialized:Z

    .line 118
    :cond_a
    return-void

    .line 122
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_b
    move-exception v0

    .line 123
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "Haptic"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static native initialize()V
.end method

.method public static play([J)Z
    .registers 5
    .param p0, "pattern"    # [J

    .prologue
    .line 76
    invoke-static {p0}, Lcom/motorola/server/Haptic;->valid([J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 77
    const/4 v2, 0x2

    aget-wide v2, p0, v2

    long-to-int v1, v2

    .line 79
    .local v1, "effectId":I
    const/16 v2, 0x7b

    if-gt v1, v2, :cond_11

    .line 81
    :try_start_e
    invoke-static {v1}, Lcom/motorola/server/Haptic;->playEffect(I)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_11} :catch_13

    .line 86
    :cond_11
    :goto_11
    const/4 v2, 0x1

    return v2

    .line 82
    :catch_13
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "Haptic"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 88
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "effectId":I
    :cond_1f
    const/4 v2, 0x0

    return v2
.end method

.method public static native playEffect(I)V
.end method

.method public static stop()V
    .registers 3

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Lcom/motorola/server/Haptic;->stopPlayingEffect()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 95
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_3
    return-void

    .line 98
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "Haptic"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static native stopPlayingEffect()V
.end method

.method public static native terminate()V
.end method

.method public static valid([J)Z
    .registers 8
    .param p0, "pattern"    # [J

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 108
    if-eqz p0, :cond_28

    .line 109
    array-length v2, p0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_28

    .line 110
    aget-wide v2, p0, v1

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    aget-wide v2, p0, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    .line 111
    aget-wide v2, p0, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_28

    aget-wide v2, p0, v6

    const-wide/16 v4, 0x7b

    cmp-long v2, v2, v4

    if-gtz v2, :cond_26

    .line 108
    :goto_25
    return v0

    :cond_26
    move v0, v1

    .line 111
    goto :goto_25

    :cond_28
    move v0, v1

    .line 108
    goto :goto_25
.end method

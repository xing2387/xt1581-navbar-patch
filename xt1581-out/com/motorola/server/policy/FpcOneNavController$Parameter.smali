.class final Lcom/motorola/server/policy/FpcOneNavController$Parameter;
.super Ljava/lang/Object;
.source "FpcOneNavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/policy/FpcOneNavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Parameter"
.end annotation


# static fields
.field private static final KEY_IMG_MIN_MOVE_DOWN:Ljava/lang/String; = "img_down"

.field private static final KEY_IMG_MIN_MOVE_LEFT:Ljava/lang/String; = "img_left"

.field private static final KEY_IMG_MIN_MOVE_RIGHT:Ljava/lang/String; = "img_right"

.field private static final KEY_IMG_MIN_MOVE_UP:Ljava/lang/String; = "img_up"

.field private static final KEY_LONG_CLICK_TIME_MIN:Ljava/lang/String; = "lct_min"

.field private static final KEY_SINGLE_CLICK_MAX_MOVE_X:Ljava/lang/String; = "scm_x"

.field private static final KEY_SINGLE_CLICK_MAX_MOVE_Y:Ljava/lang/String; = "scm_y"

.field private static final KEY_SINGLE_CLICK_TIME_MAX:Ljava/lang/String; = "sct_max"

.field private static final KEY_SINGLE_CLICK_TIME_MIN:Ljava/lang/String; = "sct_min"


# instance fields
.field public IMG_MIN_MOVE_DOWN:I

.field public IMG_MIN_MOVE_LEFT:I

.field public IMG_MIN_MOVE_RIGHT:I

.field public IMG_MIN_MOVE_UP:I

.field public LONG_CLICK_TIME_MIN:I

.field public SINGLE_CLICK_MAX_MOVE_x:I

.field public SINGLE_CLICK_MAX_MOVE_y:I

.field public SINGLE_CLICK_TIME_MAX:I

.field public SINGLE_CLICK_TIME_MIN:I

.field private final mParser:Landroid/util/KeyValueListParser;

.field final synthetic this$0:Lcom/motorola/server/policy/FpcOneNavController;


# direct methods
.method private constructor <init>(Lcom/motorola/server/policy/FpcOneNavController;)V
    .registers 4
    .param p1, "this$0"    # Lcom/motorola/server/policy/FpcOneNavController;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->this$0:Lcom/motorola/server/policy/FpcOneNavController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/server/policy/FpcOneNavController;Lcom/motorola/server/policy/FpcOneNavController$Parameter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/motorola/server/policy/FpcOneNavController;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/policy/FpcOneNavController$Parameter;-><init>(Lcom/motorola/server/policy/FpcOneNavController;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;)Z
    .registers 9
    .param p1, "configStr"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x0

    const/16 v4, 0x28

    .line 124
    :try_start_5
    iget-object v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_75

    .line 130
    iget-object v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "sct_max"

    const/16 v3, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->SINGLE_CLICK_TIME_MAX:I

    .line 131
    iget-object v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "sct_min"

    invoke-virtual {v1, v2, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->SINGLE_CLICK_TIME_MIN:I

    .line 132
    iget-object v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "scm_x"

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->SINGLE_CLICK_MAX_MOVE_x:I

    .line 133
    iget-object v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "scm_y"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->SINGLE_CLICK_MAX_MOVE_y:I

    .line 134
    iget-object v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "lct_min"

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->LONG_CLICK_TIME_MIN:I

    .line 135
    iget-object v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "img_up"

    invoke-virtual {v1, v2, v6}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->IMG_MIN_MOVE_UP:I

    .line 136
    iget-object v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "img_down"

    invoke-virtual {v1, v2, v6}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->IMG_MIN_MOVE_DOWN:I

    .line 137
    iget-object v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "img_left"

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->IMG_MIN_MOVE_LEFT:I

    .line 138
    iget-object v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "img_right"

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/server/policy/FpcOneNavController$Parameter;->IMG_MIN_MOVE_RIGHT:I

    .line 140
    const/4 v1, 0x1

    return v1

    .line 125
    :catch_75
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "FpcOneNavController"

    const-string/jumbo v2, "Bad OneNav configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    return v5
.end method

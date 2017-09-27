.class Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    const v0, 0x1020370

    const v1, 0x1020371

    const v2, 0x1020372

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 970
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 971
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 972
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 969
    return-void
.end method

.method private indexToRingerMode(I)I
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 982
    return p1
.end method

.method private ringerModeToIndex(I)I
    .registers 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 977
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x0

    .line 992
    const v4, 0x1090067

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 994
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v2

    .line 995
    .local v2, "selectedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    const/4 v4, 0x3

    if-ge v0, v4, :cond_33

    .line 996
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 997
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_31

    const/4 v4, 0x1

    :goto_21
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 999
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1000
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_31
    move v4, v5

    .line 997
    goto :goto_21

    .line 1002
    .end local v1    # "itemView":Landroid/view/View;
    :cond_33
    return-object v3
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 987
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1017
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1024
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_9

    return-void

    .line 1026
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1027
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1028
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1023
    return-void
.end method

.method public onPress()V
    .registers 1

    .prologue
    .line 1005
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 1013
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 1009
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .registers 1

    .prologue
    .line 1020
    return-void
.end method

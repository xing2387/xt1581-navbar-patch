.class final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Bypasser"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

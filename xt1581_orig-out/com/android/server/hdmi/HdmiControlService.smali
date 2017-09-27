.class public final Lcom/android/server/hdmi/HdmiControlService;
.super Lcom/android/server/SystemService;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiControlService$BinderService;,
        Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;,
        Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;,
        Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;,
        Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    }
.end annotation


# static fields
.field static final INITIATED_BY_BOOT_UP:I = 0x1

.field static final INITIATED_BY_ENABLE_CEC:I = 0x0

.field static final INITIATED_BY_HOTPLUG:I = 0x4

.field static final INITIATED_BY_SCREEN_ON:I = 0x2

.field static final INITIATED_BY_WAKE_UP_MESSAGE:I = 0x3

.field static final PERMISSION:Ljava/lang/String; = "android.permission.HDMI_CEC"

.field static final STANDBY_SCREEN_OFF:I = 0x0

.field static final STANDBY_SHUTDOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiControlService"


# instance fields
.field private final HONG_KONG:Ljava/util/Locale;

.field private final MACAU:Ljava/util/Locale;

.field private mActivePortId:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mAddressAllocated:Z

.field private mCecController:Lcom/android/server/hdmi/HdmiCecController;

.field private final mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

.field private final mDeviceEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

.field private mHdmiControlEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHotplugEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIoThread:Landroid/os/HandlerThread;

.field private mLanguage:Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mLastInputMhl:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mLocalDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

.field private mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field private mMhlDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMhlInputChangeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

.field private mPortInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerStatus:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mProhibitMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field private final mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

.field private mStandbyMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTvInputManager:Landroid/media/tv/TvInputManager;

.field private final mVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/hdmi/HdmiControlService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .registers 2

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .registers 2

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/hdmi/HdmiControlService;III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5
    .param p1, "logicalAddress"    # I
    .param p2, "deviceType"    # I
    .param p3, "powerStatus"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Z)I
    .registers 2
    .param p0, "enabled"    # Z

    .prologue
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableHdmiControlService()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .param p2, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V
    .registers 3
    .param p1, "devices"    # Ljava/util/ArrayList;
    .param p2, "initiatedBy"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAddressAllocated(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2
    .param p1, "initiatedBy"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onInitializeCecComplete(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .registers 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onLanguageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2
    .param p1, "standbyAction"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onStandbyCompleted(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2
    .param p1, "standbyAction"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->onWakeUp()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->getMhlDevicesLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "deviceType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 370
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "zh"

    const-string/jumbo v2, "HK"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    .line 100
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "zh"

    const-string/jumbo v2, "MO"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    .line 192
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Hdmi Control Io Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 242
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    .line 263
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 266
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    .line 269
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 272
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 275
    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 302
    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    .line 305
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 365
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    invoke-direct {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    .line 367
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-direct {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 371
    const-string/jumbo v0, "ro.hdmi.device_type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->getIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    .line 372
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 369
    return-void
.end method

.method private addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .prologue
    .line 1761
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 1763
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_17

    .line 1768
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1769
    :try_start_10
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_22

    monitor-exit v3

    .line 1760
    return-void

    .line 1764
    :catch_17
    move-exception v0

    .line 1765
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    return-void

    .line 1768
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .prologue
    .line 2175
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 2177
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_17

    .line 2183
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2184
    :try_start_10
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_22

    monitor-exit v3

    .line 2173
    return-void

    .line 2178
    :catch_17
    move-exception v0

    .line 2179
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "Listener already died."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    return-void

    .line 2183
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 1718
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 1720
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1f

    .line 1725
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1726
    :try_start_10
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_2a

    monitor-exit v3

    .line 1731
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1717
    return-void

    .line 1721
    :catch_1f
    move-exception v0

    .line 1722
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    return-void

    .line 1725
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 1786
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 1789
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_17

    .line 1794
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1795
    :try_start_10
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_22

    monitor-exit v3

    .line 1785
    return-void

    .line 1790
    :catch_17
    move-exception v0

    .line 1791
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    return-void

    .line 1794
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "deviceType"    # I

    .prologue
    .line 2125
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 2127
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_17

    .line 2132
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2133
    :try_start_10
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_22

    monitor-exit v3

    .line 2124
    return-void

    .line 2128
    :catch_17
    move-exception v0

    .line 2129
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    return-void

    .line 2132
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private allocateLogicalAddress(Ljava/util/ArrayList;I)V
    .registers 14
    .param p2, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, "allocatingDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 587
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 588
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v3, "allocatedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 590
    .local v5, "finished":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 596
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;->clear()V

    .line 598
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "localDevice$iterator":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 599
    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-object v8, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getType()I

    move-result v9

    .line 600
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v10

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V

    .line 599
    invoke-virtual {v8, v9, v10, v0}, Lcom/android/server/hdmi/HdmiCecController;->allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    goto :goto_1f

    .line 585
    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_41
    return-void
.end method

.method private announceHotplugEvent(IZ)V
    .registers 8
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    .prologue
    .line 1932
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {v0, p1, p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 1933
    .local v0, "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1934
    :try_start_8
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1935
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_22

    goto :goto_e

    .line 1933
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_22
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_25
    monitor-exit v4

    .line 1931
    return-void
.end method

.method private assertRunOnServiceThread()V
    .registers 3

    .prologue
    .line 826
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_15

    .line 827
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_15
    return-void
.end method

.method private canGoToStandby()Z
    .registers 4

    .prologue
    .line 2063
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2064
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->canGoToStandby()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    return v2

    .line 2066
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1e
    const/4 v2, 0x1

    return v2
.end method

.method private checkPollStrategy(I)I
    .registers 7
    .param p1, "pickStrategy"    # I

    .prologue
    .line 955
    and-int/lit8 v1, p1, 0x3

    .line 956
    .local v1, "strategy":I
    if-nez v1, :cond_1e

    .line 957
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid poll strategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 959
    :cond_1e
    const/high16 v2, 0x30000

    and-int v0, p1, v2

    .line 960
    .local v0, "iterationStrategy":I
    if-nez v0, :cond_3e

    .line 961
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid iteration strategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 963
    :cond_3e
    or-int v2, v1, v0

    return v2
.end method

.method private clearLocalDevices()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2098
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2099
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v0, :cond_8

    .line 2100
    return-void

    .line 2102
    :cond_8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 2103
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLocalDevices()V

    .line 2097
    return-void
.end method

.method private createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 11
    .param p1, "logicalAddress"    # I
    .param p2, "deviceType"    # I
    .param p3, "powerStatus"    # I

    .prologue
    .line 1004
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1005
    .local v6, "displayName":Ljava/lang/String;
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v3

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v5

    move v1, p1

    move v4, p2

    .line 1005
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method

.method private disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .prologue
    .line 2087
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v2, :cond_20

    .line 2088
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2089
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    goto :goto_e

    .line 2093
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_20
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->clearAllLocalDevices()V

    .line 2086
    return-void
.end method

.method private disableHdmiControlService()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2254
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$5;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 2253
    return-void
.end method

.method private dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/16 v3, 0xf

    const/4 v4, 0x0

    .line 893
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 894
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 895
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 896
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    if-eq v2, v3, :cond_10

    .line 897
    const/4 v2, 0x1

    return v2

    .line 901
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    if-eq v2, v3, :cond_49

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled cec command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 904
    :cond_49
    return v4
.end method

.method private enableHdmiControlService()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2246
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 2247
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 2245
    return-void
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.HDMI_CEC"

    const-string/jumbo v2, "HdmiControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    return-void
.end method

.method private static getIntList(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 378
    .local v4, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v4, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 379
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    .local v1, "item":Ljava/lang/String;
    :try_start_1f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_13

    .line 382
    :catch_2b
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "HdmiControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t parseInt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 386
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "item":Ljava/lang/String;
    :cond_47
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method private getMhlDevicesLocked()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    return-object v0
.end method

.method private initPortInfo()V
    .registers 20
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 653
    const/4 v9, 0x0

    .line 657
    .local v9, "cecPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v2, :cond_12

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v9

    .line 660
    .end local v9    # "cecPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_12
    if-nez v9, :cond_15

    .line 661
    return-void

    .line 664
    :cond_15
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 665
    .local v15, "portInfoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    new-instance v14, Landroid/util/SparseIntArray;

    invoke-direct {v14}, Landroid/util/SparseIntArray;-><init>()V

    .line 666
    .local v14, "portIdMap":Landroid/util/SparseIntArray;
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 667
    .local v13, "portDeviceMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v2, 0x0

    array-length v3, v9

    :goto_26
    if-ge v2, v3, :cond_53

    aget-object v10, v9, v2

    .line 668
    .local v10, "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v4

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v5

    invoke-virtual {v14, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 669
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v4

    invoke-virtual {v15, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 670
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v4

    new-instance v5, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v6

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    invoke-virtual {v13, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 672
    .end local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_53
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    invoke-direct {v2, v14}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;-><init>(Landroid/util/SparseIntArray;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    .line 673
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v2, v15}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 674
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v2, v13}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v11

    .line 677
    .local v11, "mhlPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v12, Landroid/util/ArraySet;

    array-length v2, v11

    invoke-direct {v12, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 678
    .local v12, "mhlSupportedPorts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    array-length v3, v11

    :goto_7e
    if-ge v2, v3, :cond_96

    aget-object v10, v11, v2

    .line 679
    .restart local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isMhlSupported()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 680
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 686
    .end local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_96
    invoke-virtual {v12}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 687
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    .line 688
    return-void

    .line 690
    :cond_a9
    new-instance v16, Ljava/util/ArrayList;

    array-length v2, v9

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 691
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    const/4 v2, 0x0

    array-length v0, v9

    move/from16 v18, v0

    move/from16 v17, v2

    :goto_b7
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f7

    aget-object v10, v9, v17

    .line 692
    .restart local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 693
    new-instance v2, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v3

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v4

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v5

    .line 694
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isCecSupported()Z

    move-result v6

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v8

    const/4 v7, 0x1

    .line 693
    invoke-direct/range {v2 .. v8}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    :goto_ec
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_b7

    .line 696
    :cond_f1
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 699
    .end local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_f7
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    .line 651
    return-void
.end method

.method private initializeCec(I)V
    .registers 5
    .param p1, "initiatedBy"    # I

    .prologue
    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 559
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 560
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->languageToInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 561
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeLocalDevices(I)V

    .line 557
    return-void
.end method

.method private initializeLocalDevices(I)V
    .registers 7
    .param p1, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 568
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v1, "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "type$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 570
    .local v2, "type":I
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 571
    .local v0, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v0, :cond_2a

    .line 572
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 574
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 575
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 579
    .end local v0    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v2    # "type":I
    :cond_31
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    .line 580
    invoke-direct {p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 565
    return-void
.end method

.method private invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I

    .prologue
    .line 1916
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1914
    :goto_3
    return-void

    .line 1917
    :catch_4
    move-exception v0

    .line 1918
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .param p2, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .prologue
    .line 1943
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1941
    :goto_3
    return-void

    .line 1944
    :catch_4
    move-exception v0

    .line 1945
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to report hotplug event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    .param p2, "enabled"    # Z

    .prologue
    .line 1925
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->onStatusChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1923
    :goto_3
    return-void

    .line 1926
    :catch_4
    move-exception v0

    .line 1927
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private notifyAddressAllocated(Ljava/util/ArrayList;I)V
    .registers 8
    .param p2, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 635
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "device$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 636
    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 637
    .local v0, "address":I
    invoke-virtual {v1, v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleAddressAllocated(II)V

    goto :goto_7

    .line 639
    .end local v0    # "address":I
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 640
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V

    .line 633
    :cond_2e
    return-void
.end method

.method private onInitializeCecComplete(I)V
    .registers 7
    .param p1, "initiatedBy"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 463
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 464
    iput v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 466
    :cond_9
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 468
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 469
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 471
    :cond_22
    const/4 v0, -0x1

    .line 472
    .local v0, "reason":I
    packed-switch p1, :pswitch_data_34

    .line 484
    :goto_26
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    .line 485
    invoke-virtual {p0, v4, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 462
    :cond_2c
    return-void

    .line 474
    :pswitch_2d
    const/4 v0, 0x0

    .line 475
    goto :goto_26

    .line 477
    :pswitch_2f
    const/4 v0, 0x1

    .line 478
    goto :goto_26

    .line 481
    :pswitch_31
    const/4 v0, 0x2

    .line 482
    goto :goto_26

    .line 472
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2d
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private onLanguageChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2071
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2072
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    .line 2074
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2075
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    .line 2076
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->languageToInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 2070
    :cond_1c
    return-void
.end method

.method private onStandby(I)V
    .registers 5
    .param p1, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 2040
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2041
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 2042
    :cond_b
    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2043
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 2046
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    .line 2047
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 2039
    return-void
.end method

.method private onStandbyCompleted(I)V
    .registers 8
    .param p1, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2108
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2109
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "onStandbyCompleted"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-eq v2, v5, :cond_13

    .line 2112
    return-void

    .line 2114
    :cond_13
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2115
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2116
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZI)V

    goto :goto_20

    .line 2118
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_32
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 2119
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 2120
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 2121
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2107
    return-void
.end method

.method private onWakeUp()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2022
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2023
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2024
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_18

    .line 2025
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    if-eqz v1, :cond_17

    .line 2026
    const/4 v0, 0x2

    .line 2027
    .local v0, "startReason":I
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    if-eqz v1, :cond_14

    .line 2028
    const/4 v0, 0x3

    .line 2030
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 2021
    .end local v0    # "startReason":I
    :cond_17
    :goto_17
    return-void

    .line 2033
    :cond_18
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Device does not support HDMI-CEC."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1695
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1696
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 1697
    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_17

    .line 1698
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Local playback device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1700
    return-void

    .line 1702
    :cond_17
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1694
    return-void
.end method

.method private playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .registers 3

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 1962
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    return-object v0
.end method

.method private queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1707
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1708
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 1709
    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_17

    .line 1710
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Local playback device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1712
    return-void

    .line 1714
    :cond_17
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1706
    return-void
.end method

.method private registerContentObserver()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 490
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/String;

    .line 492
    const-string/jumbo v3, "hdmi_control_enabled"

    aput-object v3, v2, v4

    .line 493
    const-string/jumbo v3, "hdmi_control_auto_wakeup_enabled"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 494
    const-string/jumbo v3, "hdmi_control_auto_device_off_enabled"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 495
    const-string/jumbo v3, "mhl_input_switching_enabled"

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 496
    const-string/jumbo v3, "mhl_power_charge_enabled"

    const/4 v5, 0x4

    aput-object v3, v2, v5

    .line 498
    .local v2, "settings":[Ljava/lang/String;
    array-length v5, v2

    move v3, v4

    :goto_2b
    if-ge v3, v5, :cond_3c

    aget-object v1, v2, v3

    .line 499
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 500
    const/4 v8, -0x1

    .line 499
    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 489
    .end local v1    # "s":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method private removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 1749
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1750
    :try_start_3
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1751
    .local v0, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_9

    .line 1752
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1753
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_32

    .end local v0    # "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :cond_30
    monitor-exit v3

    .line 1748
    return-void

    .line 1749
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_32
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 1800
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1802
    :try_start_3
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 1801
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 1803
    .local v0, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_9

    .line 1804
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1805
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    .end local v0    # "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :cond_2c
    monitor-exit v3

    .line 1799
    return-void

    .line 1800
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .prologue
    .line 1854
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1855
    :try_start_3
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_21

    .line 1857
    :try_start_a
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16
    .catchall {:try_start_a .. :try_end_14} :catchall_21

    :goto_14
    monitor-exit v2

    .line 1853
    return-void

    .line 1858
    :catch_16
    move-exception v0

    .line 1859
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Listener already died."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 1854
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    .line 1830
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1831
    :try_start_3
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 1833
    :try_start_a
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16
    .catchall {:try_start_a .. :try_end_14} :catchall_22

    monitor-exit v2

    .line 1829
    return-void

    .line 1834
    :catch_16
    move-exception v0

    .line 1835
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Listener already died"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_22

    monitor-exit v2

    .line 1836
    return-void

    .line 1830
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static toInt(Z)I
    .registers 2
    .param p0, "enabled"    # Z

    .prologue
    .line 544
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private updateSafeMhlInput()V
    .registers 8
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1075
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 1076
    .local v4, "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getAllLocalDevices()Landroid/util/SparseArray;

    move-result-object v1

    .line 1077
    .local v1, "devices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_35

    .line 1078
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    .line 1079
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    .line 1080
    .local v3, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v3, :cond_32

    .line 1081
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1082
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    .restart local v4    # "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1087
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v3    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_35
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1088
    :try_start_38
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_3c

    monitor-exit v5

    .line 1073
    return-void

    .line 1087
    :catchall_3c
    move-exception v6

    monitor-exit v5

    throw v6
.end method


# virtual methods
.method announceSystemAudioModeChange(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 994
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 996
    :try_start_3
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 995
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 997
    .local v0, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_9

    .line 994
    .end local v0    # "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_20
    monitor-exit v3

    .line 993
    return-void
.end method

.method changeInputForMhl(IZ)V
    .registers 8
    .param p1, "portId"    # I
    .param p2, "contentOn"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2300
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2301
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    if-nez v3, :cond_a

    return-void

    .line 2302
    :cond_a
    if-eqz p2, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    .line 2303
    .local v2, "lastInput":I
    :goto_14
    const/4 v3, -0x1

    if-eq p1, v3, :cond_23

    .line 2304
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    new-instance v4, Lcom/android/server/hdmi/HdmiControlService$6;

    invoke-direct {v4, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    invoke-virtual {v3, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 2316
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePortId(I)V

    .line 2322
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 2323
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 2325
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_36
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 2299
    return-void

    .line 2302
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v2    # "lastInput":I
    :cond_3a
    const/4 v2, -0x1

    .restart local v2    # "lastInput":I
    goto :goto_14

    .line 2324
    .restart local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    :cond_3c
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    sget-object v4, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-object v1, v3

    goto :goto_36
.end method

.method displayOsd(I)V
    .registers 6
    .param p1, "messageId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2344
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2345
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2346
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2347
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2348
    const-string/jumbo v3, "android.permission.HDMI_CEC"

    .line 2347
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2343
    return-void
.end method

.method displayOsd(II)V
    .registers 7
    .param p1, "messageId"    # I
    .param p2, "extra"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2353
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2354
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2355
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2356
    const-string/jumbo v1, "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2357
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2358
    const-string/jumbo v3, "android.permission.HDMI_CEC"

    .line 2357
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2352
    return-void
.end method

.method getAllLocalDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 968
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 1967
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method getCecVersion()I
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVersion()I

    move-result v0

    return v0
.end method

.method getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4
    .param p1, "logicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 780
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    if-nez v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    goto :goto_a
.end method

.method getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5
    .param p1, "port"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 785
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 786
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 787
    .local v0, "info":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_11

    .line 788
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    return-object v1

    .line 790
    :cond_11
    return-object v2
.end method

.method getIoLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getLanguage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2082
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2083
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method getLastInputForMhl()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2288
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2289
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    return v0
.end method

.method getPhysicalAddress()I
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getPhysicalAddress()I

    move-result v0

    return v0
.end method

.method getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 4
    .param p1, "portId"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method getPortInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    return-object v0
.end method

.method getPowerManager()Landroid/os/PowerManager;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method getPowerStatus()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1978
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1979
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    return v0
.end method

.method getServiceLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method getServiceLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getTvInputManager()Landroid/media/tv/TvInputManager;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    return-object v0
.end method

.method getVendorId()I
    .registers 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVendorId()I

    move-result v0

    return v0
.end method

.method handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 870
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 871
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    if-nez v1, :cond_f

    .line 872
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 873
    return v2

    .line 875
    :cond_f
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    .line 876
    .local v0, "errorCode":I
    if-eqz v0, :cond_1d

    .line 879
    if-ne v0, v3, :cond_1c

    .line 880
    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 882
    :cond_1c
    return v2

    .line 884
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    return v1
.end method

.method handleMhlBusModeChanged(II)V
    .registers 7
    .param p1, "portId"    # I
    .param p2, "busmode"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1039
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1040
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_f

    .line 1041
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setBusMode(I)V

    .line 1037
    :goto_e
    return-void

    .line 1043
    :cond_f
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No mhl device exists for bus mode change[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1044
    const-string/jumbo v3, ", busmode:"

    .line 1043
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1044
    const-string/jumbo v3, "]"

    .line 1043
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method handleMhlBusOvercurrent(IZ)V
    .registers 7
    .param p1, "portId"    # I
    .param p2, "on"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1051
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1052
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_f

    .line 1053
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onBusOvercurrentDetected(Z)V

    .line 1049
    :goto_e
    return-void

    .line 1055
    :cond_f
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No mhl device exists for bus overcurrent event[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method handleMhlDeviceStatusChanged(III)V
    .registers 8
    .param p1, "portId"    # I
    .param p2, "adopterId"    # I
    .param p3, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1061
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1062
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1064
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_f

    .line 1065
    invoke-virtual {v0, p2, p3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setDeviceStatusChange(II)V

    .line 1060
    :goto_e
    return-void

    .line 1067
    :cond_f
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No mhl device exists for device status event[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1068
    const-string/jumbo v3, ", adopterId:"

    .line 1067
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1068
    const-string/jumbo v3, ", deviceId:"

    .line 1067
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1068
    const-string/jumbo v3, "]"

    .line 1067
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method handleMhlHotplugEvent(IZ)V
    .registers 9
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1014
    if-eqz p2, :cond_45

    .line 1015
    new-instance v1, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 1016
    .local v1, "newDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v2

    .line 1017
    .local v2, "oldDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v2, :cond_36

    .line 1018
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    .line 1019
    const-string/jumbo v3, "HdmiControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Old device of port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_36
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1022
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    .line 1033
    .end local v1    # "newDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v2    # "oldDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    :goto_41
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    .line 1011
    return-void

    .line 1024
    :cond_45
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1025
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_5c

    .line 1026
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    .line 1027
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1028
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    goto :goto_41

    .line 1030
    :cond_5c
    const-string/jumbo v3, "HdmiControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No device to remove:[portId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method invokeClearTimerRecordingResult(II)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1902
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1903
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-eqz v1, :cond_10

    .line 1905
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onClearTimerRecordingResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12
    .catchall {:try_start_7 .. :try_end_10} :catchall_1d

    :cond_10
    :goto_10
    monitor-exit v2

    .line 1901
    return-void

    .line 1907
    :catch_12
    move-exception v0

    .line 1908
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Failed to call onClearTimerRecordingResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1d

    goto :goto_10

    .line 1902
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 10
    .param p1, "device"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    .prologue
    .line 1774
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1775
    :try_start_3
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_39

    .line 1777
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_start_15
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_39

    goto :goto_9

    .line 1778
    :catch_1d
    move-exception v0

    .line 1779
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string/jumbo v3, "HdmiControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to report device event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_39

    goto :goto_9

    .line 1774
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_3c
    monitor-exit v4

    .line 1773
    return-void
.end method

.method invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 1842
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1843
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-eqz v1, :cond_10

    .line 1845
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12
    .catchall {:try_start_7 .. :try_end_10} :catchall_2e

    :cond_10
    :goto_10
    monitor-exit v2

    .line 1841
    return-void

    .line 1846
    :catch_12
    move-exception v0

    .line 1847
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v1, "HdmiControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception thrown by IHdmiInputChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2e

    goto :goto_10

    .line 1842
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeMhlVendorCommandListeners(III[B)V
    .registers 11
    .param p1, "portId"    # I
    .param p2, "offest"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    .prologue
    .line 2189
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2190
    :try_start_3
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_28

    .line 2192
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_start_15
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->onReceived(III[B)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_28

    goto :goto_9

    .line 2193
    :catch_1d
    move-exception v0

    .line 2194
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string/jumbo v3, "HdmiControlService"

    const-string/jumbo v5, "Failed to notify MHL vendor command"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    goto :goto_9

    .line 2189
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_28
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_2b
    monitor-exit v4

    .line 2188
    return-void
.end method

.method invokeOneTouchRecordResult(II)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1878
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1879
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-eqz v1, :cond_10

    .line 1881
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onOneTouchRecordResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12
    .catchall {:try_start_7 .. :try_end_10} :catchall_1d

    :cond_10
    :goto_10
    monitor-exit v2

    .line 1877
    return-void

    .line 1882
    :catch_12
    move-exception v0

    .line 1883
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Failed to call onOneTouchRecordResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1d

    goto :goto_10

    .line 1878
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeRecordRequestListener(I)[B
    .registers 6
    .param p1, "recorderAddress"    # I

    .prologue
    .line 1865
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1866
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_21

    if-eqz v1, :cond_1d

    .line 1868
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->getOneTouchRecordSource(I)[B
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_13
    .catchall {:try_start_7 .. :try_end_10} :catchall_21

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1869
    :catch_13
    move-exception v0

    .line 1870
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Failed to start record."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1873
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_21

    monitor-exit v2

    return-object v1

    .line 1865
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeTimerRecordingResult(II)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1890
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1891
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-eqz v1, :cond_10

    .line 1893
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onTimerRecordingResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12
    .catchall {:try_start_7 .. :try_end_10} :catchall_1d

    :cond_10
    :goto_10
    monitor-exit v2

    .line 1889
    return-void

    .line 1894
    :catch_12
    move-exception v0

    .line 1895
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Failed to call onTimerRecordingResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1d

    goto :goto_10

    .line 1890
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeVendorCommandListenersOnControlStateChanged(ZI)Z
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 2158
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2159
    :try_start_3
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_33

    move-result v3

    if-eqz v3, :cond_e

    .line 2160
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2162
    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_33

    .line 2164
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_start_20
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-get1(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onControlStateChanged(ZI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_33

    goto :goto_14

    .line 2165
    :catch_28
    move-exception v0

    .line 2166
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string/jumbo v3, "HdmiControlService"

    const-string/jumbo v5, "Failed to notify control-state-changed to vendor handler"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_33

    goto :goto_14

    .line 2158
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_33
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2169
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_36
    const/4 v3, 0x1

    monitor-exit v4

    return v3
.end method

.method invokeVendorCommandListenersOnReceived(III[BZ)Z
    .registers 12
    .param p1, "deviceType"    # I
    .param p2, "srcAddress"    # I
    .param p3, "destAddress"    # I
    .param p4, "params"    # [B
    .param p5, "hasVendorId"    # Z

    .prologue
    .line 2139
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2140
    :try_start_3
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_39

    move-result v3

    if-eqz v3, :cond_e

    .line 2141
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2143
    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .line 2144
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_39

    move-result v3

    if-ne v3, p1, :cond_14

    .line 2148
    :try_start_26
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-get1(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onReceived(II[BZ)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_2e
    .catchall {:try_start_26 .. :try_end_2d} :catchall_39

    goto :goto_14

    .line 2149
    :catch_2e
    move-exception v0

    .line 2150
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2f
    const-string/jumbo v3, "HdmiControlService"

    const-string/jumbo v5, "Failed to notify vendor command reception"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_14

    .line 2139
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2153
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_3c
    const/4 v3, 0x1

    monitor-exit v4

    return v3
.end method

.method isAddressAllocated()Z
    .registers 2

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return v0
.end method

.method isConnected(I)Z
    .registers 3
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 814
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result v0

    return v0
.end method

.method isConnectedToArcPort(I)Z
    .registers 4
    .param p1, "physicalAddress"    # I

    .prologue
    .line 804
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    .line 805
    .local v0, "portId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 806
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v1

    return v1

    .line 808
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method isControlEnabled()Z
    .registers 3

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1972
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 1971
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isMhlInputChangeEnabled()Z
    .registers 3

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2338
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 2337
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isPowerOnOrTransient()Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1984
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1985
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-eqz v2, :cond_e

    .line 1986
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 1985
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 1986
    goto :goto_e
.end method

.method isPowerStandby()Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1998
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1999
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-ne v1, v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isPowerStandbyOrTransient()Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1991
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1992
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-eq v1, v0, :cond_d

    .line 1993
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 1992
    :cond_d
    :goto_d
    return v0

    .line 1993
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isProhibitMode()Z
    .registers 3

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2202
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 2201
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isTvDevice()Z
    .registers 3

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTvDeviceEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1958
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method isValidPortId(I)Z
    .registers 3
    .param p1, "portId"    # I

    .prologue
    .line 741
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 4
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 864
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 865
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 863
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .prologue
    .line 434
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_22

    .line 435
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 436
    const-string/jumbo v1, "tv_input"

    .line 435
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 437
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    .line 433
    :cond_22
    return-void
.end method

.method onHotplug(IZ)V
    .registers 10
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 915
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 917
    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 930
    :cond_b
    :goto_b
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 931
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onHotplug(IZ)V

    goto :goto_15

    .line 918
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v3, "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "type$iterator":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 920
    .local v4, "type":I
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v6, v4}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    .line 921
    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v2, :cond_4f

    .line 922
    invoke-static {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    .line 923
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 925
    :cond_4f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 927
    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v4    # "type":I
    :cond_53
    const/4 v6, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    goto :goto_b

    .line 933
    .end local v3    # "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    .end local v5    # "type$iterator":Ljava/util/Iterator;
    .restart local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_58
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    .line 914
    return-void
.end method

.method public onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 391
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 392
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 393
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 394
    const-string/jumbo v1, "hdmi_control_enabled"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    .line 395
    const-string/jumbo v1, "mhl_input_switching_enabled"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 397
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecController;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 398
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_97

    .line 399
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    if-eqz v1, :cond_30

    .line 400
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 407
    :cond_30
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 408
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->isReady()Z

    move-result v1

    if-nez v1, :cond_47

    .line 409
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Device does not support MHL-control."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    .line 413
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->initPortInfo()V

    .line 414
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    .line 415
    const-string/jumbo v1, "hdmi_control"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-direct {v2, p0, v4}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 417
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_8f

    .line 419
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 420
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->registerContentObserver()V

    .line 429
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_8f
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 390
    return-void

    .line 403
    :cond_97
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Device does not support HDMI-CEC."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method pathToPortId(I)I
    .registers 5
    .param p1, "path"    # I

    .prologue
    .line 736
    const v1, 0xf000

    and-int v0, p1, v1

    .line 737
    .local v0, "portAddress":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->get(II)I

    move-result v1

    return v1
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .registers 7
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "sourceAddress"    # I
    .param p3, "pickStrategy"    # I
    .param p4, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 950
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiControlService;->checkPollStrategy(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/server/hdmi/HdmiCecController;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V

    .line 948
    return-void
.end method

.method portIdToPath(I)I
    .registers 6
    .param p1, "portId"    # I

    .prologue
    .line 721
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    .line 722
    .local v0, "portInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    if-nez v0, :cond_24

    .line 723
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find the port info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const v1, 0xffff

    return v1

    .line 726
    :cond_24
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v1

    return v1
.end method

.method readBooleanSetting(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Z

    .prologue
    const/4 v1, 0x1

    .line 548
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 549
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v2

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_14

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_5

    return-void

    .line 447
    :cond_5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    .line 445
    return-void
.end method

.method runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 817
    return-void
.end method

.method runOnServiceThreadAtFrontOfQueue(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 821
    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 853
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 851
    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 6
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 839
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 840
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    if-nez v0, :cond_12

    .line 841
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 838
    :cond_11
    :goto_11
    return-void

    .line 843
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid message type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    if-eqz p2, :cond_11

    .line 845
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    goto :goto_11
.end method

.method setActivePortId(I)V
    .registers 3
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2272
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2273
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 2277
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    .line 2271
    return-void
.end method

.method setAudioReturnChannel(IZ)V
    .registers 4
    .param p1, "portId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setAudioReturnChannel(IZ)V

    .line 887
    return-void
.end method

.method setAudioStatus(ZI)V
    .registers 7
    .param p1, "mute"    # Z
    .param p2, "volume"    # I

    .prologue
    const/4 v3, 0x3

    .line 976
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 977
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 978
    .local v1, "muted":Z
    if-eqz p1, :cond_12

    .line 979
    if-nez v1, :cond_11

    .line 980
    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 975
    :cond_11
    :goto_11
    return-void

    .line 983
    :cond_12
    if-eqz v1, :cond_18

    .line 984
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 989
    :cond_18
    const/16 v2, 0x101

    .line 988
    invoke-virtual {v0, v3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_11
.end method

.method setCecOption(II)V
    .registers 4
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2214
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2215
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 2213
    return-void
.end method

.method setControlEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2220
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2222
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2223
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_f

    monitor-exit v0

    .line 2226
    if-eqz p1, :cond_12

    .line 2227
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->enableHdmiControlService()V

    .line 2228
    return-void

    .line 2222
    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1

    .line 2231
    :cond_12
    const/4 v0, 0x0

    .line 2232
    const/4 v1, 0x1

    .line 2231
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 2235
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$4;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 2241
    return-void
.end method

.method setLastInputForMhl(I)V
    .registers 2
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2282
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2283
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    .line 2281
    return-void
.end method

.method setMhlInputChangeEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2331
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2332
    :try_start_e
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_12

    monitor-exit v0

    .line 2328
    return-void

    .line 2331
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setProhibitMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2208
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    .line 2206
    return-void

    .line 2207
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method standby()V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2013
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 2015
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2012
    return-void
.end method

.method public tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .registers 3

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object v0
.end method

.method unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_5

    return-void

    .line 452
    :cond_5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 450
    return-void
.end method

.method wakeUp()V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 2006
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "android.server.hdmi:WAKE"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 2003
    return-void
.end method

.method writeBooleanSetting(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 554
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    return-void
.end method

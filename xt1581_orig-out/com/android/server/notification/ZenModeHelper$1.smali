.class Lcom/android/server/notification/ZenModeHelper$1;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/service/notification/ZenModeConfig$Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public migrate(Landroid/service/notification/ZenModeConfig$XmlV1;)Landroid/service/notification/ZenModeConfig;
    .registers 9
    .param p1, "v1"    # Landroid/service/notification/ZenModeConfig$XmlV1;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 887
    if-nez p1, :cond_5

    return-object v5

    .line 888
    :cond_5
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 889
    .local v1, "rt":Landroid/service/notification/ZenModeConfig;
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowCalls:Z

    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 890
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowEvents:Z

    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 891
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    iput v5, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 892
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowMessages:Z

    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 893
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    iput v5, v1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 894
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowReminders:Z

    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 896
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepMode:Ljava/lang/String;

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig$XmlV1;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v0

    .line 897
    .local v0, "days":[I
    if-eqz v0, :cond_87

    array-length v5, v0

    if-lez v5, :cond_87

    .line 898
    const-string/jumbo v5, "ZenModeHelper"

    const-string/jumbo v6, "Migrating existing V1 downtime to single schedule"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 900
    .local v3, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iput-object v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 901
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartHour:I

    iput v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 902
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartMinute:I

    iput v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 903
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndHour:I

    iput v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 904
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndMinute:I

    iput v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 905
    new-instance v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 906
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 907
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 908
    const v6, 0x10405b8

    .line 907
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 909
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 910
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepNone:Z

    if-eqz v5, :cond_72

    const/4 v4, 0x2

    :cond_72
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 912
    sget-object v4, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 913
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :goto_81
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4, v1}, Lcom/android/server/notification/ZenModeHelper;->-wrap1(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V

    .line 919
    return-object v1

    .line 915
    :cond_87
    const-string/jumbo v4, "ZenModeHelper"

    const-string/jumbo v5, "No existing V1 downtime found, generating default schedules"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4, v1}, Lcom/android/server/notification/ZenModeHelper;->-wrap2(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V

    goto :goto_81
.end method

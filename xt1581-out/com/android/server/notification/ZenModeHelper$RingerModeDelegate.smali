.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1007
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 4
    .param p1, "streams"    # I

    .prologue
    .line 1013
    or-int/lit8 p1, p1, 0x26

    .line 1018
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1019
    or-int/lit8 p1, p1, 0x18

    .line 1025
    :goto_d
    return p1

    .line 1022
    :cond_e
    and-int/lit8 p1, p1, -0x19

    goto :goto_d
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 14
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v7, 0x0

    .line 972
    move v3, p2

    .line 973
    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_1d

    const/4 v0, 0x1

    .line 974
    .local v0, "isChange":Z
    :goto_5
    const/4 v4, 0x1

    if-ne p4, v4, :cond_1f

    const/4 v1, 0x1

    .line 976
    .local v1, "isVibrate":Z
    :goto_9
    const/4 v2, -0x1

    .line 977
    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_3e

    .line 996
    :cond_d
    :goto_d
    const/4 v4, -0x1

    if-eq v2, v4, :cond_19

    .line 997
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v5, "ringerModeExternal"

    const/4 v6, 0x0

    invoke-static {v4, v2, v6, v5, v7}, Lcom/android/server/notification/ZenModeHelper;->-wrap5(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 1000
    :cond_19
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1002
    return v3

    .line 973
    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "isChange":Z
    goto :goto_5

    .line 974
    :cond_1f
    const/4 v1, 0x0

    .restart local v1    # "isVibrate":Z
    goto :goto_9

    .line 979
    .restart local v2    # "newZen":I
    :pswitch_21
    if-eqz v0, :cond_32

    .line 980
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-nez v4, :cond_2c

    .line 981
    const/4 v2, 0x3

    .line 983
    :cond_2c
    if-eqz v1, :cond_30

    const/4 v3, 0x1

    goto :goto_d

    .line 984
    :cond_30
    const/4 v3, 0x0

    goto :goto_d

    .line 986
    :cond_32
    move v3, p4

    goto :goto_d

    .line 991
    :pswitch_34
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eqz v4, :cond_d

    .line 992
    const/4 v2, 0x0

    goto :goto_d

    .line 977
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_21
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 14
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 932
    if-eq p1, p2, :cond_1f

    const/4 v0, 0x1

    .line 934
    .local v0, "isChange":Z
    :goto_7
    move v2, p2

    .line 936
    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 937
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_66

    .line 958
    :cond_c
    :goto_c
    if-eq v1, v7, :cond_17

    .line 959
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v4, "ringerModeInternal"

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4, v6}, Lcom/android/server/notification/ZenModeHelper;->-wrap5(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 962
    :cond_17
    if-nez v0, :cond_1b

    if-eq v1, v7, :cond_62

    .line 963
    :cond_1b
    :goto_1b
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 966
    :cond_1e
    return v2

    .line 932
    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "isChange":Z
    goto :goto_7

    .line 939
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_21
    if-eqz v0, :cond_c

    iget-boolean v3, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v3, :cond_c

    .line 940
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eq v3, v4, :cond_38

    .line 941
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eq v3, v5, :cond_38

    .line 942
    const/4 v1, 0x3

    .line 944
    :cond_38
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->-wrap6(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_c

    .line 949
    :pswitch_42
    if-eqz v0, :cond_58

    if-nez p1, :cond_58

    .line 950
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eq v3, v4, :cond_56

    .line 951
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-ne v3, v5, :cond_58

    .line 952
    :cond_56
    const/4 v1, 0x0

    .line 951
    goto :goto_c

    .line 953
    :cond_58
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eqz v3, :cond_c

    .line 954
    const/4 v2, 0x0

    goto :goto_c

    .line 962
    :cond_62
    if-eq p4, v2, :cond_1e

    goto :goto_1b

    .line 937
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_21
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 926
    const-string/jumbo v0, "ZenModeHelper"

    return-object v0
.end method

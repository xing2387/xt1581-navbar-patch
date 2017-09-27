.class Lcom/android/server/location/GnssLocationProvider$12;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->handleInjectNtpTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 1156
    const/4 v9, 0x1

    .line 1157
    .local v9, "refreshSuccess":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get19(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    cmp-long v3, v16, v18

    if-ltz v3, :cond_20

    .line 1158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get19(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v9

    .line 1162
    .end local v9    # "refreshSuccess":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get19(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    cmp-long v3, v16, v18

    if-gez v3, :cond_13e

    .line 1163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get19(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v4

    .line 1164
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get19(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v6

    .line 1165
    .local v6, "timeReference":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get19(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v10

    .line 1166
    .local v10, "certainty":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1168
    .local v14, "now":J
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 1169
    const-string/jumbo v3, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "NTP server returned: "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1170
    const-string/jumbo v16, " ("

    .line 1169
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1170
    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1169
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1171
    const-string/jumbo v16, ") reference: "

    .line 1169
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1172
    const-string/jumbo v16, " certainty: "

    .line 1169
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1173
    const-string/jumbo v16, " system time offset: "

    .line 1169
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1173
    sub-long v16, v4, v14

    .line 1169
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_be
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    long-to-int v8, v10

    invoke-static/range {v3 .. v8}, Lcom/android/server/location/GnssLocationProvider;->-wrap28(Lcom/android/server/location/GnssLocationProvider;JJI)V

    .line 1177
    const-wide/32 v12, 0x5265c00

    .line 1178
    .local v12, "delay":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get18(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;->reset()V

    .line 1184
    .end local v4    # "time":J
    .end local v6    # "timeReference":J
    .end local v10    # "certainty":J
    .end local v14    # "now":J
    :goto_d4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v8, 0xa

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v3, v8, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->-wrap35(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    .line 1186
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 1188
    const-string/jumbo v3, "onDemandTimeInjection=%s, refreshSuccess=%s, delay=%s"

    .line 1187
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/location/GnssLocationProvider;->-get20(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v8, v17

    .line 1190
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v8, v17

    .line 1191
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v8, v17

    .line 1187
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    .local v2, "message":Ljava/lang/String;
    const-string/jumbo v3, "GnssLocationProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    .end local v2    # "message":Ljava/lang/String;
    :cond_11d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get20(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v3

    if-nez v3, :cond_154

    if-eqz v9, :cond_154

    .line 1201
    :goto_129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get30(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1202
    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v8, "WakeLock released by handleInjectNtpTime()"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void

    .line 1180
    .end local v12    # "delay":J
    :cond_13e
    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v8, "requestTime failed"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get18(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;->nextBackoffMillis()J

    move-result-wide v12

    .restart local v12    # "delay":J
    goto :goto_d4

    .line 1197
    :cond_154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get9(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v3

    const/4 v8, 0x5

    invoke-virtual {v3, v8, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_129
.end method

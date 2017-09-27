.class Lcom/android/server/connectivity/MetricsLoggerService$1;
.super Landroid/net/IConnectivityMetricsLogger$Stub;
.source "MetricsLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/MetricsLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mPendingIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/connectivity/MetricsLoggerService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/MetricsLoggerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/MetricsLoggerService;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-direct {p0}, Landroid/net/IConnectivityMetricsLogger$Stub;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    .line 133
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 24
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "android.permission.DUMP"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_3e

    .line 141
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Permission Denial: can\'t dump ConnectivityMetricsLoggerService from from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 142
    const-string/jumbo v13, ", uid="

    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return-void

    .line 147
    :cond_3e
    const/4 v5, 0x0

    .line 148
    .local v5, "dumpSerializedSize":Z
    const/4 v4, 0x0

    .line 149
    .local v4, "dumpEvents":Z
    const/4 v3, 0x0

    .line 150
    .local v3, "dumpDebugInfo":Z
    const/4 v12, 0x0

    move-object/from16 v0, p3

    array-length v13, v0

    :goto_45
    if-ge v12, v13, :cond_79

    aget-object v2, p3, v12

    .line 151
    .local v2, "arg":Ljava/lang/String;
    const-string/jumbo v14, "--debug"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_56

    .line 153
    const/4 v3, 0x1

    .line 150
    :cond_53
    :goto_53
    add-int/lit8 v12, v12, 0x1

    goto :goto_45

    .line 151
    :cond_56
    const-string/jumbo v14, "--events"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_61

    .line 157
    const/4 v4, 0x1

    .line 158
    goto :goto_53

    .line 151
    :cond_61
    const-string/jumbo v14, "--size"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6c

    .line 161
    const/4 v5, 0x1

    .line 162
    goto :goto_53

    .line 151
    :cond_6c
    const-string/jumbo v14, "--all"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_53

    .line 165
    const/4 v3, 0x1

    .line 166
    const/4 v4, 0x1

    .line 167
    const/4 v5, 0x1

    .line 168
    goto :goto_53

    .line 172
    .end local v2    # "arg":Ljava/lang/String;
    :cond_79
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v13

    monitor-enter v13

    .line 173
    :try_start_82
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Number of events: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->size()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Counter: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->size()I

    move-result v12

    if-lez v12, :cond_10f

    .line 176
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Time span: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityMetricsEvent;

    iget-wide v0, v12, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    .line 179
    const-wide/16 v18, 0x3e8

    .line 178
    div-long v16, v16, v18

    .line 177
    invoke-static/range {v16 .. v17}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v12

    .line 176
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    :cond_10f
    if-eqz v5, :cond_155

    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 184
    .local v9, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "e$iterator":Ljava/util/Iterator;
    :goto_121
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_135

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityMetricsEvent;

    .line 185
    .local v6, "e":Landroid/net/ConnectivityMetricsEvent;
    const/4 v12, 0x0

    invoke-virtual {v9, v6, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_131
    .catchall {:try_start_82 .. :try_end_131} :catchall_132

    goto :goto_121

    .line 172
    .end local v6    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    .end local v9    # "p":Landroid/os/Parcel;
    :catchall_132
    move-exception v12

    monitor-exit v13

    throw v12

    .line 187
    .restart local v7    # "e$iterator":Ljava/util/Iterator;
    .restart local v9    # "p":Landroid/os/Parcel;
    :cond_135
    :try_start_135
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Serialized data size: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/os/Parcel;->dataSize()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 191
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    .end local v9    # "p":Landroid/os/Parcel;
    :cond_155
    if-eqz v4, :cond_184

    .line 192
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 193
    const-string/jumbo v12, "Events:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "e$iterator":Ljava/util/Iterator;
    :goto_16e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_184

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityMetricsEvent;

    .line 195
    .restart local v6    # "e":Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {v6}, Landroid/net/ConnectivityMetricsEvent;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_183
    .catchall {:try_start_135 .. :try_end_183} :catchall_132

    goto :goto_16e

    .end local v6    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    :cond_184
    monitor-exit v13

    .line 200
    if-eqz v3, :cond_204

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v13

    monitor-enter v13

    .line 202
    :try_start_190
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 203
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_194
    const/4 v12, 0x5

    if-ge v8, v12, :cond_1d4

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v12

    aget v12, v12, v8

    if-lez v12, :cond_1d1

    .line 205
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Throttling Counter #"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v14

    aget v14, v14, v8

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    :cond_1d1
    add-int/lit8 v8, v8, 0x1

    goto :goto_194

    .line 208
    :cond_1d4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Throttling Time Remaining: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v14}, Lcom/android/server/connectivity/MetricsLoggerService;->-get6(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    .line 211
    const-wide/16 v16, 0x3e8

    .line 210
    div-long v14, v14, v16

    .line 209
    invoke-static {v14, v15}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v14

    .line 208
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_203
    .catchall {:try_start_190 .. :try_end_203} :catchall_23f

    monitor-exit v13

    .line 215
    .end local v8    # "i":I
    :cond_204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    monitor-enter v13

    .line 216
    :try_start_209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_242

    .line 217
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 218
    const-string/jumbo v12, "Pending intents:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "pi$iterator":Ljava/util/Iterator;
    :goto_226
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_242

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 220
    .local v10, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v10}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_23b
    .catchall {:try_start_209 .. :try_end_23b} :catchall_23c

    goto :goto_226

    .line 215
    .end local v10    # "pi":Landroid/app/PendingIntent;
    .end local v11    # "pi$iterator":Ljava/util/Iterator;
    :catchall_23c
    move-exception v12

    monitor-exit v13

    throw v12

    .line 201
    :catchall_23f
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_242
    monitor-exit v13

    .line 225
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-get1(Lcom/android/server/connectivity/MetricsLoggerService;)Lcom/android/server/connectivity/DnsEventListenerService;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/server/connectivity/DnsEventListenerService;->dump(Ljava/io/PrintWriter;)V

    .line 138
    return-void
.end method

.method public getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;
    .registers 16
    .param p1, "reference"    # Landroid/net/ConnectivityMetricsEvent$Reference;

    .prologue
    .line 324
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V

    .line 325
    invoke-virtual {p1}, Landroid/net/ConnectivityMetricsEvent$Reference;->getValue()J

    move-result-wide v6

    .line 329
    .local v6, "ref":J
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v9

    monitor-enter v9

    .line 330
    :try_start_10
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    cmp-long v8, v6, v10

    if-lez v8, :cond_30

    .line 331
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "Invalid reference"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/net/ConnectivityMetricsEvent$Reference;->setValue(J)V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_9e

    .line 333
    const/4 v8, 0x0

    monitor-exit v9

    return-object v8

    .line 335
    :cond_30
    :try_start_30
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    int-to-long v12, v8

    sub-long/2addr v10, v12

    cmp-long v8, v6, v10

    if-gez v8, :cond_59

    .line 336
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    int-to-long v12, v8

    sub-long v6, v10, v12

    .line 340
    :cond_59
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    .line 341
    iget-object v10, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v10}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    sub-long/2addr v10, v6

    long-to-int v10, v10

    .line 340
    sub-int v4, v8, v10

    .line 343
    .local v4, "numEventsToSkip":I
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    sub-int/2addr v8, v4

    new-array v5, v8, [Landroid/net/ConnectivityMetricsEvent;

    .line 344
    .local v5, "result":[Landroid/net/ConnectivityMetricsEvent;
    const/4 v2, 0x0

    .line 345
    .local v2, "i":I
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_86
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityMetricsEvent;

    .line 346
    .local v0, "e":Landroid/net/ConnectivityMetricsEvent;
    if-lez v4, :cond_99

    .line 347
    add-int/lit8 v4, v4, -0x1

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_97
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_86

    .line 349
    :cond_99
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v0, v5, v3
    :try_end_9d
    .catchall {:try_start_30 .. :try_end_9d} :catchall_9e

    goto :goto_97

    .line 329
    .end local v0    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v4    # "numEventsToSkip":I
    .end local v5    # "result":[Landroid/net/ConnectivityMetricsEvent;
    :catchall_9e
    move-exception v8

    monitor-exit v9

    throw v8

    .line 353
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v3    # "i":I
    .restart local v4    # "numEventsToSkip":I
    .restart local v5    # "result":[Landroid/net/ConnectivityMetricsEvent;
    :cond_a1
    :try_start_a1
    iget-object v8, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v8}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/net/ConnectivityMetricsEvent$Reference;->setValue(J)V
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_9e

    monitor-exit v9

    .line 356
    return-object v5
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)J
    .registers 6
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    .prologue
    .line 230
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/net/ConnectivityMetricsEvent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 231
    .local v0, "events":[Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/MetricsLoggerService$1;->logEvents([Landroid/net/ConnectivityMetricsEvent;)J

    move-result-wide v2

    return-wide v2
.end method

.method public logEvents([Landroid/net/ConnectivityMetricsEvent;)J
    .registers 20
    .param p1, "events"    # [Landroid/net/ConnectivityMetricsEvent;

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap1(Lcom/android/server/connectivity/MetricsLoggerService;)V

    .line 246
    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_1b

    .line 247
    :cond_e
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "No events passed to logEvents()"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-wide/16 v4, -0x1

    return-wide v4

    .line 251
    :cond_1b
    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v8, v3, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    .line 252
    .local v8, "componentTag":I
    if-ltz v8, :cond_25

    .line 253
    const/4 v3, 0x5

    if-lt v8, v3, :cond_43

    .line 254
    :cond_25
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-wide/16 v4, -0x1

    return-wide v4

    .line 258
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v4

    monitor-enter v4

    .line 259
    :try_start_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 260
    .local v10, "currentTimeMillis":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get6(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v6

    cmp-long v3, v10, v6

    if-lez v3, :cond_63

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3, v10, v11}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap3(Lcom/android/server/connectivity/MetricsLoggerService;J)V

    .line 264
    :cond_63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v3

    aget v5, v3, v8

    move-object/from16 v0, p1

    array-length v6, v0

    add-int/2addr v5, v6

    aput v5, v3, v8

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get5(Lcom/android/server/connectivity/MetricsLoggerService;)[I

    move-result-object v3

    aget v3, v3, v8

    .line 267
    const/16 v5, 0x3e8

    .line 266
    if-le v3, v5, :cond_b9

    .line 268
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Too many events from #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 269
    const-string/jumbo v6, ". Block until "

    .line 268
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 269
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v6}, Lcom/android/server/connectivity/MetricsLoggerService;->-get6(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v6

    .line 268
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get6(Lcom/android/server/connectivity/MetricsLoggerService;)J
    :try_end_b6
    .catchall {:try_start_4c .. :try_end_b6} :catchall_f1

    move-result-wide v6

    monitor-exit v4

    return-wide v6

    :cond_b9
    monitor-exit v4

    .line 275
    const/4 v14, 0x0

    .line 277
    .local v14, "sendPendingIntents":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get3(Lcom/android/server/connectivity/MetricsLoggerService;)Ljava/util/ArrayDeque;

    move-result-object v4

    monitor-enter v4

    .line 278
    const/4 v3, 0x0

    :try_start_c5
    move-object/from16 v0, p1

    array-length v5, v0

    :goto_c8
    if-ge v3, v5, :cond_fe

    aget-object v12, p1, v3

    .line 279
    .local v12, "e":Landroid/net/ConnectivityMetricsEvent;
    iget v6, v12, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    if-eq v6, v8, :cond_f4

    .line 280
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Landroid/net/ConnectivityMetricsEvent;->componentTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_c5 .. :try_end_ed} :catchall_188

    .line 281
    const-wide/16 v6, -0x1

    monitor-exit v4

    return-wide v6

    .line 258
    .end local v10    # "currentTimeMillis":J
    .end local v12    # "e":Landroid/net/ConnectivityMetricsEvent;
    .end local v14    # "sendPendingIntents":Z
    :catchall_f1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 284
    .restart local v10    # "currentTimeMillis":J
    .restart local v12    # "e":Landroid/net/ConnectivityMetricsEvent;
    .restart local v14    # "sendPendingIntents":Z
    :cond_f4
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v6, v12}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap0(Lcom/android/server/connectivity/MetricsLoggerService;Landroid/net/ConnectivityMetricsEvent;)V

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_c8

    .line 287
    .end local v12    # "e":Landroid/net/ConnectivityMetricsEvent;
    :cond_fe
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get4(Lcom/android/server/connectivity/MetricsLoggerService;)J

    move-result-wide v6

    move-object/from16 v0, p1

    array-length v5, v0

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v6, v6, v16

    invoke-static {v3, v6, v7}, Lcom/android/server/connectivity/MetricsLoggerService;->-set1(Lcom/android/server/connectivity/MetricsLoggerService;J)J

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)I

    move-result v5

    move-object/from16 v0, p1

    array-length v6, v0

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Lcom/android/server/connectivity/MetricsLoggerService;->-set0(Lcom/android/server/connectivity/MetricsLoggerService;I)I

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->-get2(Lcom/android/server/connectivity/MetricsLoggerService;)I

    move-result v3

    const/16 v5, 0x12c

    if-lt v3, v5, :cond_135

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/connectivity/MetricsLoggerService;->-set0(Lcom/android/server/connectivity/MetricsLoggerService;I)I
    :try_end_134
    .catchall {:try_start_f4 .. :try_end_134} :catchall_188

    .line 292
    const/4 v14, 0x1

    :cond_135
    monitor-exit v4

    .line 296
    if-eqz v14, :cond_18c

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    monitor-enter v15

    .line 298
    :try_start_13d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "pi$iterator":Ljava/util/Iterator;
    :goto_145
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;
    :try_end_151
    .catchall {:try_start_13d .. :try_end_151} :catchall_185

    .line 301
    .local v2, "pi":Landroid/app/PendingIntent;
    :try_start_151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v3}, Lcom/android/server/connectivity/MetricsLoggerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_160
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_151 .. :try_end_160} :catch_161
    .catchall {:try_start_151 .. :try_end_160} :catchall_185

    goto :goto_145

    .line 302
    :catch_161
    move-exception v9

    .line 303
    .local v9, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_162
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pending intent canceled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_184
    .catchall {:try_start_162 .. :try_end_184} :catchall_185

    goto :goto_145

    .line 297
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v9    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v13    # "pi$iterator":Ljava/util/Iterator;
    :catchall_185
    move-exception v3

    monitor-exit v15

    throw v3

    .line 277
    :catchall_188
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v13    # "pi$iterator":Ljava/util/Iterator;
    :cond_18b
    monitor-exit v15

    .line 310
    .end local v13    # "pi$iterator":Ljava/util/Iterator;
    :cond_18c
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public register(Landroid/app/PendingIntent;)Z
    .registers 5
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v0}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V

    .line 363
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 364
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 365
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Replacing registered pending intent"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1a
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_22

    monitor-exit v1

    .line 370
    const/4 v0, 0x1

    return v0

    .line 363
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregister(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->this$0:Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-static {v0}, Lcom/android/server/connectivity/MetricsLoggerService;->-wrap2(Lcom/android/server/connectivity/MetricsLoggerService;)V

    .line 377
    iget-object v1, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 378
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/MetricsLoggerService$1;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 379
    invoke-static {}, Lcom/android/server/connectivity/MetricsLoggerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Pending intent is not registered"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit v1

    .line 373
    return-void

    .line 377
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

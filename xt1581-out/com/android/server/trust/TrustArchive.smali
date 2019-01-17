.class public Lcom/android/server/trust/TrustArchive;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustArchive$Event;
    }
.end annotation


# static fields
.field private static final HISTORY_LIMIT:I = 0xc8

.field private static final TYPE_AGENT_CONNECTED:I = 0x4

.field private static final TYPE_AGENT_DIED:I = 0x3

.field private static final TYPE_AGENT_STOPPED:I = 0x5

.field private static final TYPE_GRANT_TRUST:I = 0x0

.field private static final TYPE_MANAGING_TRUST:I = 0x6

.field private static final TYPE_REVOKE_TRUST:I = 0x1

.field private static final TYPE_TRUST_TIMEOUT:I = 0x2


# instance fields
.field mEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/trust/TrustArchive$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    .line 32
    return-void
.end method

.method private addEvent(Lcom/android/server/trust/TrustArchive$Event;)V
    .registers 4
    .param p1, "e"    # Lcom/android/server/trust/TrustArchive$Event;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_f

    .line 104
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 106
    :cond_f
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method private dumpGrantFlags(I)Ljava/lang/String;
    .registers 5
    .param p1, "flags"    # I

    .prologue
    const/16 v2, 0x7c

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1a

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    :cond_14
    const-string/jumbo v1, "INITIATED_BY_USER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_1a
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2d

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    :cond_27
    const-string/jumbo v1, "DISMISS_KEYGUARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_38

    .line 200
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dumpType(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_3c

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :pswitch_1f
    const-string/jumbo v0, "GrantTrust"

    return-object v0

    .line 173
    :pswitch_23
    const-string/jumbo v0, "RevokeTrust"

    return-object v0

    .line 175
    :pswitch_27
    const-string/jumbo v0, "TrustTimeout"

    return-object v0

    .line 177
    :pswitch_2b
    const-string/jumbo v0, "AgentDied"

    return-object v0

    .line 179
    :pswitch_2f
    const-string/jumbo v0, "AgentConnected"

    return-object v0

    .line 181
    :pswitch_33
    const-string/jumbo v0, "AgentStopped"

    return-object v0

    .line 183
    :pswitch_37
    const-string/jumbo v0, "ManagingTrust"

    return-object v0

    .line 169
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
    .end packed-switch
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .registers 4
    .param p0, "duration"    # J

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatElapsed(J)Ljava/lang/String;
    .registers 8
    .param p0, "elapsed"    # J

    .prologue
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, p0, v4

    .line 154
    .local v0, "delta":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v2, v0, v4

    .line 155
    .local v2, "wallTime":J
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p0, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 161
    .local v0, "idx":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    if-ltz v0, :cond_19

    .line 162
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 164
    :cond_19
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V
    .registers 14
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "limit"    # I
    .param p3, "userId"    # I
    .param p4, "linePrefix"    # Ljava/lang/String;
    .param p5, "duplicateSimpleNames"    # Z

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 113
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/trust/TrustArchive$Event;>;"
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    if-ge v0, p2, :cond_b9

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustArchive$Event;

    .line 115
    .local v1, "ev":Lcom/android/server/trust/TrustArchive$Event;
    const/4 v3, -0x1

    if-eq p3, v3, :cond_1c

    iget v3, v1, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-ne p3, v3, :cond_7

    .line 119
    :cond_1c
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v3, "#%-2d %s %s: "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-wide v6, v1, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    invoke-static {v6, v7}, Lcom/android/server/trust/TrustArchive;->formatElapsed(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 121
    iget v5, v1, Lcom/android/server/trust/TrustArchive$Event;->type:I

    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustArchive;->dumpType(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 120
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 122
    const/4 v3, -0x1

    if-ne p3, v3, :cond_55

    .line 123
    const-string/jumbo v3, "user="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    :cond_55
    const-string/jumbo v3, "agent="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    if-eqz p5, :cond_71

    .line 127
    iget-object v3, v1, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    :goto_66
    iget v3, v1, Lcom/android/server/trust/TrustArchive$Event;->type:I

    sparse-switch v3, :sswitch_data_ba

    .line 141
    :goto_6b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 129
    :cond_71
    iget-object v3, v1, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-static {v3}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_66

    .line 133
    :sswitch_7b
    const-string/jumbo v3, ", message=\"%s\", duration=%s, flags=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 134
    iget-object v5, v1, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-wide v6, v1, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    invoke-static {v6, v7}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, v1, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustArchive;->dumpGrantFlags(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 133
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_6b

    .line 137
    :sswitch_9c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", managingTrust="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_6b

    .line 110
    .end local v1    # "ev":Lcom/android/server/trust/TrustArchive$Event;
    :cond_b9
    return-void

    .line 131
    :sswitch_data_ba
    .sparse-switch
        0x0 -> :sswitch_7b
        0x6 -> :sswitch_9c
    .end sparse-switch
.end method

.method public logAgentConnected(ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 91
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const-wide/16 v6, 0x0

    const/4 v2, 0x4

    move v3, p1

    move-object v4, p2

    move v9, v8

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 90
    return-void
.end method

.method public logAgentDied(ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 87
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const-wide/16 v6, 0x0

    const/4 v2, 0x3

    move v3, p1

    move-object v4, p2

    move v9, v8

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 86
    return-void
.end method

.method public logAgentStopped(ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 95
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const-wide/16 v6, 0x0

    const/4 v2, 0x5

    move v3, p1

    move-object v4, p2

    move v9, v8

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 94
    return-void
.end method

.method public logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V
    .registers 19
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "flags"    # I

    .prologue
    .line 74
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v2, 0x0

    .line 75
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 73
    return-void
.end method

.method public logManagingTrust(ILandroid/content/ComponentName;Z)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "managing"    # Z

    .prologue
    const/4 v5, 0x0

    .line 99
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const-wide/16 v6, 0x0

    const/4 v2, 0x6

    const/4 v8, 0x0

    move v3, p1

    move-object v4, p2

    move v9, p3

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 98
    return-void
.end method

.method public logRevokeTrust(ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 79
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    move v3, p1

    move-object v4, p2

    move v9, v8

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 78
    return-void
.end method

.method public logTrustTimeout(ILandroid/content/ComponentName;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 83
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const-wide/16 v6, 0x0

    const/4 v2, 0x2

    move v3, p1

    move-object v4, p2

    move v9, v8

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$Event;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 82
    return-void
.end method

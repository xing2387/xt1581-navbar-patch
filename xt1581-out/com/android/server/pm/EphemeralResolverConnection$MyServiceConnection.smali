.class final Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EphemeralResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/EphemeralResolverConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/EphemeralResolverConnection;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/EphemeralResolverConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/EphemeralResolverConnection;->-get0(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 147
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {p2}, Lcom/android/internal/app/IEphemeralResolver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IEphemeralResolver;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/pm/EphemeralResolverConnection;->-set0(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/internal/app/IEphemeralResolver;)Lcom/android/internal/app/IEphemeralResolver;

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/EphemeralResolverConnection;->-get0(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    monitor-exit v1

    .line 145
    return-void

    .line 146
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/EphemeralResolverConnection;->-get0(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 155
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/pm/EphemeralResolverConnection;->-set0(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/internal/app/IEphemeralResolver;)Lcom/android/internal/app/IEphemeralResolver;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    monitor-exit v1

    .line 153
    return-void

    .line 154
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

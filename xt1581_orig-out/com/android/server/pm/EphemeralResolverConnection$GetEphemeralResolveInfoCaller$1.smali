.class Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "EphemeralResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;


# direct methods
.method constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller$1;->this$1:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    const-string/jumbo v2, "com.android.internal.app.RESOLVE_INFO"

    .line 170
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    .local v0, "resolveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/EphemeralResolveInfo;>;"
    const-string/jumbo v2, "com.android.internal.app.SEQUENCE"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 174
    .local v1, "sequence":I
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller$1;->this$1:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    .line 168
    return-void
.end method

.class Lcom/android/server/location/GnssLocationProvider$6;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
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
    .line 974
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 976
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0, v3}, Lcom/android/server/location/GnssLocationProvider;->-set4(Lcom/android/server/location/GnssLocationProvider;Z)Z

    .line 977
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap39(Lcom/android/server/location/GnssLocationProvider;)V

    .line 978
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get11(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 979
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-wrap12(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->-set7(Lcom/android/server/location/GnssLocationProvider;Z)Z

    .line 981
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v0

    if-eqz v0, :cond_44

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInitializeNvItems mSupportsXtra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get29(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_44
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get27(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 985
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 986
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get27(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get28(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v2

    .line 985
    invoke-static {v0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap31(Lcom/android/server/location/GnssLocationProvider;ILjava/lang/String;I)V

    .line 988
    :cond_5d
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 989
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 990
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get4(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v2

    .line 989
    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap31(Lcom/android/server/location/GnssLocationProvider;ILjava/lang/String;I)V

    .line 975
    :cond_77
    return-void
.end method

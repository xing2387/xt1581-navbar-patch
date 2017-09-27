.class Lcom/android/server/location/LocationMetrics$EventParam;
.super Ljava/lang/Object;
.source "LocationMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventParam"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/location/LocationMetrics;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/location/LocationMetrics;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/location/LocationMetrics$EventParam;->this$0:Lcom/android/server/location/LocationMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p2, p0, Lcom/android/server/location/LocationMetrics$EventParam;->key:Ljava/lang/String;

    .line 166
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationMetrics$EventParam;->value:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/location/LocationMetrics;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/location/LocationMetrics$EventParam;->this$0:Lcom/android/server/location/LocationMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/android/server/location/LocationMetrics$EventParam;->key:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lcom/android/server/location/LocationMetrics$EventParam;->value:Ljava/lang/String;

    .line 159
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationMetrics$EventParam;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationMetrics$EventParam;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

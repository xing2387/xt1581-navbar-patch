.class Lcom/google/android/gms/internal/mh$2;
.super Lcom/google/android/gms/internal/mh;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/mh;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/mh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mh",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mh;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic aU(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mh$2;->aW(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected aW(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/mh;->hV()Lcom/google/android/gms/internal/mh$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mh$2;->NR:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/mh$2;->NS:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/mh$a;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
.class Lcom/google/android/gms/internal/mh$3;
.super Lcom/google/android/gms/internal/mh;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/mh;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/mh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mh",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mh;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic aU(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mh$3;->aX(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected aX(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/mh;->hV()Lcom/google/android/gms/internal/mh$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mh$3;->NR:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/mh$3;->NS:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/mh$a;->b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

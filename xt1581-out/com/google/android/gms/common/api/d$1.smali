.class Lcom/google/android/gms/common/api/d$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic No:Lcom/google/android/gms/common/api/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/d$1;->No:Lcom/google/android/gms/common/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/api/d$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d$d",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$1;->No:Lcom/google/android/gms/common/api/d;

    iget-object v0, v0, Lcom/google/android/gms/common/api/d;->Nk:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

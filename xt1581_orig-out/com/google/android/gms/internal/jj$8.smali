.class Lcom/google/android/gms/internal/jj$8;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jj;->b(Lcom/google/android/gms/internal/jf;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GU:Lcom/google/android/gms/internal/ji;

.field final synthetic GW:Lcom/google/android/gms/internal/jj;

.field final synthetic GX:Lcom/google/android/gms/internal/jf;

.field final synthetic Hd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/jj$8;->GW:Lcom/google/android/gms/internal/jj;

    iput-object p2, p0, Lcom/google/android/gms/internal/jj$8;->GU:Lcom/google/android/gms/internal/ji;

    iput-object p3, p0, Lcom/google/android/gms/internal/jj$8;->GX:Lcom/google/android/gms/internal/jf;

    iput p4, p0, Lcom/google/android/gms/internal/jj$8;->Hd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/jj$8;->GU:Lcom/google/android/gms/internal/ji;

    iget-object v1, p0, Lcom/google/android/gms/internal/jj$8;->GX:Lcom/google/android/gms/internal/jf;

    iget v2, p0, Lcom/google/android/gms/internal/jj$8;->Hd:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ji;->a(Lcom/google/android/gms/internal/jf;I)V

    return-void
.end method

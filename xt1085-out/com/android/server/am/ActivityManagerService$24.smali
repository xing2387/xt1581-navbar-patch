.class final Lcom/android/server/am/ActivityManagerService$24;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ActivityManagerService$MemItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I
    .registers 7
    .param p1, "lhs"    # Lcom/android/server/am/ActivityManagerService$MemItem;
    .param p2, "rhs"    # Lcom/android/server/am/ActivityManagerService$MemItem;

    .prologue
    .line 16091
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 16092
    const/4 v0, 0x1

    return v0

    .line 16093
    :cond_a
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 16094
    const/4 v0, -0x1

    return v0

    .line 16096
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 16090
    check-cast p1, Lcom/android/server/am/ActivityManagerService$MemItem;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$24;->compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I

    move-result v0

    return v0
.end method

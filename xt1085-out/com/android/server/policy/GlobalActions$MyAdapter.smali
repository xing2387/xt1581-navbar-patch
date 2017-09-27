.class Lcom/android/server/policy/GlobalActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 5

    .prologue
    .line 919
    const/4 v1, 0x0

    .line 921
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get12(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 922
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get12(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActions$Action;

    .line 924
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 927
    :cond_28
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 930
    :cond_36
    add-int/lit8 v1, v1, 0x1

    .line 921
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 932
    .end local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    :cond_3b
    return v1
.end method

.method public getItem(I)Lcom/android/server/policy/GlobalActions$Action;
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 947
    const/4 v1, 0x0

    .line 948
    .local v1, "filteredPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get12(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 949
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get12(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActions$Action;

    .line 950
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 953
    :cond_28
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 956
    :cond_36
    if-ne v1, p1, :cond_39

    .line 957
    return-object v0

    .line 959
    :cond_39
    add-int/lit8 v1, v1, 0x1

    .line 948
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 962
    .end local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    :cond_3e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 963
    const-string/jumbo v5, " out of range of showable actions"

    .line 962
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 964
    const-string/jumbo v5, ", filtered count="

    .line 962
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 964
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v5

    .line 962
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 965
    const-string/jumbo v5, ", keyguardshowing="

    .line 962
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 965
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    .line 962
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 966
    const-string/jumbo v5, ", provisioned="

    .line 962
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 966
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    .line 962
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 945
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 971
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 975
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    .line 976
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 937
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->isEnabled()Z

    move-result v0

    return v0
.end method

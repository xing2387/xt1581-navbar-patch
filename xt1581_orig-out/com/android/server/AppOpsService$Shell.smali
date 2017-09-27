.class Lcom/android/server/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/AppOpsService;

.field mode:I

.field modeStr:Ljava/lang/String;

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V
    .registers 4
    .param p1, "iface"    # Lcom/android/internal/app/IAppOpsService;
    .param p2, "internal"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 1655
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1647
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1656
    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 1657
    iput-object p2, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    .line 1655
    return-void
.end method

.method private strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 1673
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v2

    return v2

    .line 1674
    :catch_5
    move-exception v0

    .line 1677
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v2

    return v2

    .line 1678
    :catch_b
    move-exception v1

    .line 1681
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_c
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_11

    move-result v2

    return v2

    .line 1682
    :catch_11
    move-exception v0

    .line 1683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 1662
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 2

    .prologue
    .line 1667
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1668
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 1666
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .registers 8
    .param p1, "defMode"    # I
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1708
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1709
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 1710
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 1711
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 1712
    const-string/jumbo v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1713
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_a

    .line 1715
    :cond_24
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_2b

    .line 1716
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_a

    .line 1717
    :cond_2b
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1718
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 1723
    :cond_31
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_3c

    .line 1724
    const-string/jumbo v1, "Error: Operation not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    return v3

    .line 1727
    :cond_3c
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 1728
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v1, :cond_49

    .line 1729
    return v3

    .line 1731
    :cond_49
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v1, :cond_58

    .line 1732
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-gez v1, :cond_5a

    .line 1733
    return v3

    .line 1736
    :cond_58
    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    .line 1738
    :cond_5a
    return v4
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .registers 10
    .param p1, "reqOp"    # Z
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 1742
    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1743
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 1744
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 1745
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 1746
    const-string/jumbo v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_a

    .line 1749
    :cond_24
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v1, :cond_2b

    .line 1750
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_a

    .line 1751
    :cond_2b
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1752
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 1757
    :cond_31
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v1, :cond_3c

    .line 1758
    const-string/jumbo v1, "Error: Package name not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    return v5

    .line 1760
    :cond_3c
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_49

    if-eqz p1, :cond_49

    .line 1761
    const-string/jumbo v1, "Error: Operation not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    return v5

    .line 1764
    :cond_49
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v1, :cond_5a

    .line 1765
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 1766
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v1, :cond_5c

    .line 1767
    return v5

    .line 1770
    :cond_5a
    iput v5, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 1772
    :cond_5c
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    if-ne v1, v2, :cond_66

    .line 1773
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1775
    :cond_66
    const-string/jumbo v1, "root"

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1776
    iput v6, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    .line 1781
    :goto_73
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v1, :cond_af

    .line 1782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: No UID for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    return v5

    .line 1778
    :cond_9e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 1779
    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    const/16 v4, 0x2000

    .line 1778
    invoke-interface {v1, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    goto :goto_73

    .line 1785
    :cond_af
    return v6
.end method

.method strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "modeStr"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 1689
    const-string/jumbo v1, "allow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1691
    const/4 v1, 0x0

    return v1

    .line 1689
    :cond_b
    const-string/jumbo v1, "deny"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1693
    const/4 v1, 0x2

    return v1

    .line 1689
    :cond_16
    const-string/jumbo v1, "ignore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1695
    const/4 v1, 0x1

    return v1

    .line 1689
    :cond_21
    const-string/jumbo v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1697
    const/4 v1, 0x3

    return v1

    .line 1700
    :cond_2c
    :try_start_2c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2f} :catch_31

    move-result v1

    return v1

    .line 1701
    :catch_31
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: Mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    const/4 v1, -0x1

    return v1
.end method

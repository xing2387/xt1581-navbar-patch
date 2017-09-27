.class public Landroid/net/apf/ApfFilter;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfFilter$Ra;,
        Landroid/net/apf/ApfFilter$ReceiveThread;
    }
.end annotation


# static fields
.field private static ARP_HEADER_OFFSET:I = 0x0

.field private static final ARP_IPV4_REQUEST_HEADER:[B

.field private static ARP_TARGET_IP_ADDRESS_OFFSET:I = 0x0

.field private static final DBG:Z = true

.field private static final DHCP_CLIENT_MAC_OFFSET:I = 0x32

.field private static final DHCP_CLIENT_PORT:I = 0x44

.field private static final ETH_BROADCAST_MAC_ADDRESS:[B

.field private static final ETH_DEST_ADDR_OFFSET:I = 0x0

.field private static final ETH_ETHERTYPE_OFFSET:I = 0xc

.field private static final ETH_HEADER_LEN:I = 0xe

.field private static final FRACTION_OF_LIFETIME_TO_FILTER:I = 0x6

.field private static final ICMP6_NEIGHBOR_ANNOUNCEMENT:I = 0x88

.field private static final ICMP6_ROUTER_ADVERTISEMENT:I = 0x86

.field private static final ICMP6_TYPE_OFFSET:I = 0x36

.field private static final IPV4_DEST_ADDR_OFFSET:I = 0x1e

.field private static final IPV4_FRAGMENT_OFFSET_MASK:I = 0x1fff

.field private static final IPV4_FRAGMENT_OFFSET_OFFSET:I = 0x14

.field private static final IPV4_PROTOCOL_OFFSET:I = 0x17

.field private static final IPV6_ALL_NODES_ADDRESS:[B

.field private static final IPV6_DEST_ADDR_OFFSET:I = 0x26

.field private static final IPV6_HEADER_LEN:I = 0x28

.field private static final IPV6_NEXT_HEADER_OFFSET:I = 0x14

.field private static final IPV6_SRC_ADDR_OFFSET:I = 0x16

.field private static final MAX_PROGRAM_LIFETIME_WORTH_REFRESHING:J = 0x1eL

.field private static final MAX_RAS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ApfFilter"

.field private static final UDP_DESTINATION_PORT_OFFSET:I = 0x10

.field private static final UDP_HEADER_LEN:I = 0x8

.field private static final VDBG:Z


# instance fields
.field private final mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field mHardwareAddress:[B

.field private mIPv4Address:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

.field private mLastInstalledProgram:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInstalledProgramMinLifetime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastTimeInstalledProgram:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mMulticastFilter:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mNetworkInterface:Ljava/net/NetworkInterface;

.field private mNumProgramUpdates:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mRas:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/apf/ApfFilter$Ra;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

.field private mUniqueCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0()J
    .registers 2

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Landroid/net/apf/ApfFilter;)J
    .registers 3

    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->getUniqueNumberLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/net/apf/ApfFilter;[BI)V
    .registers 3
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfFilter;->processRa([BI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    .line 130
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    .line 129
    sput-object v0, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    .line 144
    const/16 v0, 0xe

    sput v0, Landroid/net/apf/ApfFilter;->ARP_HEADER_OFFSET:I

    .line 145
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Landroid/net/apf/ApfFilter;->ARP_IPV4_REQUEST_HEADER:[B

    .line 152
    const/16 v0, 0x26

    sput v0, Landroid/net/apf/ApfFilter;->ARP_TARGET_IP_ADDRESS_OFFSET:I

    .line 71
    return-void

    .line 114
    nop

    :array_24
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 130
    nop

    :array_2c
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 145
    :array_38
    .array-data 1
        0x0t
        0x1t
        0x8t
        0x0t
        0x6t
        0x4t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)V
    .registers 6
    .param p1, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "ipManagerCallback"    # Landroid/net/ip/IpManager$Callback;
    .param p4, "multicastFilter"    # Z

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    .line 172
    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 173
    iput-object p3, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    .line 174
    iput-object p2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    .line 175
    iput-boolean p4, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    .line 177
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->maybeStartFilter()V

    .line 171
    return-void
.end method

.method private beginProgramLocked()Landroid/net/apf/ApfGenerator;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Landroid/net/apf/ApfGenerator;

    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    .line 729
    .local v0, "gen":Landroid/net/apf/ApfGenerator;
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v4, v4, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    .line 744
    const-string/jumbo v2, "skipArpFilters"

    .line 745
    .local v2, "skipArpFiltersLabel":Ljava/lang/String;
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v5, 0xc

    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 746
    sget v4, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-virtual {v0, v4, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 747
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 748
    invoke-virtual {v0, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 751
    const-string/jumbo v3, "skipIPv4Filters"

    .line 755
    .local v3, "skipIPv4FiltersLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-virtual {v0, v4, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 756
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 757
    invoke-virtual {v0, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 763
    const-string/jumbo v1, "IPv6Filters"

    .line 764
    .local v1, "ipv6FilterLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-virtual {v0, v4, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 767
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 768
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v5, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const-string/jumbo v6, "__PASS__"

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 769
    const-string/jumbo v4, "__DROP__"

    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 772
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 773
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 774
    return-object v0
.end method

.method private static curTime()J
    .registers 4

    .prologue
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static findIPv4Address(Landroid/net/LinkProperties;)[B
    .registers 8
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v6, 0x0

    .line 929
    const/4 v3, 0x0

    .line 930
    .local v3, "ipv4Address":[B
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "ipv4Address":[B
    .local v2, "inetAddr$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 931
    .local v1, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 932
    .local v0, "addr":[B
    array-length v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 934
    if-eqz v3, :cond_26

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 935
    :cond_26
    move-object v3, v0

    .local v3, "ipv4Address":[B
    goto :goto_a

    .line 934
    .end local v3    # "ipv4Address":[B
    :cond_28
    return-object v6

    .line 937
    .end local v0    # "addr":[B
    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    :cond_29
    return-object v3
.end method

.method private generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V
    .registers 5
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-eqz v0, :cond_26

    .line 598
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget v1, Landroid/net/apf/ApfFilter;->ARP_HEADER_OFFSET:I

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 599
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v1, Landroid/net/apf/ApfFilter;->ARP_IPV4_REQUEST_HEADER:[B

    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 601
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget v1, Landroid/net/apf/ApfFilter;->ARP_TARGET_IP_ADDRESS_OFFSET:I

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 602
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 606
    :cond_26
    const-string/jumbo v0, "__PASS__"

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 586
    return-void
.end method

.method private generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .registers 5
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 628
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v0, :cond_70

    .line 630
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 631
    const/16 v0, 0xf0

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addAnd(I)Landroid/net/apf/ApfGenerator;

    .line 632
    const-string/jumbo v0, "__DROP__"

    const/16 v1, 0xe0

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 636
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 637
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v1, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 639
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 640
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-string/jumbo v1, "__DROP__"

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 642
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 643
    const-string/jumbo v0, "__DROP__"

    const/16 v1, 0x1fff

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 645
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 646
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 647
    const-string/jumbo v0, "__DROP__"

    const/16 v1, 0x44

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 649
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 651
    invoke-virtual {p1}, Landroid/net/apf/ApfGenerator;->addAddR1()Landroid/net/apf/ApfGenerator;

    .line 652
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 656
    :cond_70
    const-string/jumbo v0, "__PASS__"

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 616
    return-void
.end method

.method private generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .registers 7
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x26

    .line 677
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 680
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v2, :cond_50

    .line 682
    const-string/jumbo v0, "skipIPv6MulticastFilter"

    .line 683
    .local v0, "skipIpv6MulticastFilterLabel":Ljava/lang/String;
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-virtual {p1, v2, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 686
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 687
    const-string/jumbo v2, "__DROP__"

    const/16 v3, 0xff

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 689
    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 690
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 697
    .end local v0    # "skipIpv6MulticastFilterLabel":Ljava/lang/String;
    :goto_2b
    const-string/jumbo v1, "skipUnsolicitedMulticastNA"

    .line 699
    .local v1, "skipUnsolicitedMulticastNALabel":Ljava/lang/String;
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x36

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 700
    const/16 v2, 0x88

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 703
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 704
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v3, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    invoke-virtual {p1, v2, v3, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 706
    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 707
    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 667
    return-void

    .line 693
    .end local v1    # "skipUnsolicitedMulticastNALabel":Ljava/lang/String;
    :cond_50
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    const-string/jumbo v3, "__PASS__"

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_2b
.end method

.method private getUniqueNumberLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 186
    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    return-wide v0
.end method

.method private hexDump(Ljava/lang/String;[BI)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "packet"    # [B
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v1, p3, v1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public static maybeCreate(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)Landroid/net/apf/ApfFilter;
    .registers 8
    .param p0, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "ipManagerCallback"    # Landroid/net/ip/IpManager$Callback;
    .param p3, "multicastFilter"    # Z

    .prologue
    const/4 v3, 0x0

    .line 893
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-object v3

    .line 894
    :cond_6
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-nez v0, :cond_b

    return-object v3

    .line 895
    :cond_b
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    const/16 v1, 0x200

    if-ge v0, v1, :cond_2e

    .line 896
    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unacceptably small APF limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-object v3

    .line 903
    :cond_2e
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    sget v1, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    if-eq v0, v1, :cond_35

    return-object v3

    .line 904
    :cond_35
    new-instance v0, Landroid/net/apf/ApfGenerator;

    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    iget v1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 905
    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported APF version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-object v3

    .line 908
    :cond_5f
    new-instance v0, Landroid/net/apf/ApfFilter;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/apf/ApfFilter;-><init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)V

    return-object v0
.end method

.method private maybeInstallNewProgramLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 819
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    return-void

    .line 821
    :cond_9
    iget-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    add-long v0, v2, v4

    .line 822
    .local v0, "expiry":J
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1d

    .line 823
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 818
    :cond_1d
    return-void
.end method

.method private declared-synchronized processRa([BI)V
    .registers 9
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .prologue
    monitor-enter p0

    .line 847
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_2
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_40

    .line 848
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/apf/ApfFilter$Ra;

    .line 849
    .local v2, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 852
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    .line 853
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    .line 854
    iget v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    .line 863
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 865
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->maybeInstallNewProgramLocked()V
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_9a

    monitor-exit p0

    .line 866
    return-void

    .line 847
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 869
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_40
    :try_start_40
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    .line 871
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_9a

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_4f

    monitor-exit p0

    return-void

    .line 874
    :cond_4f
    :try_start_4f
    new-instance v2, Landroid/net/apf/ApfFilter$Ra;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/apf/ApfFilter$Ra;-><init>(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_5c
    .catchall {:try_start_4f .. :try_end_54} :catchall_9a

    .line 880
    .restart local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :try_start_54
    invoke-virtual {v2}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_9a

    move-result v3

    if-eqz v3, :cond_79

    monitor-exit p0

    return-void

    .line 875
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catch_5c
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string/jumbo v3, "ApfFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error parsing RA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_9a

    monitor-exit p0

    .line 877
    return-void

    .line 881
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_79
    :try_start_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 882
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_98
    .catchall {:try_start_79 .. :try_end_98} :catchall_9a

    monitor-exit p0

    .line 843
    return-void

    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catchall_9a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private purgeExpiredRasLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 833
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 834
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expiring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 838
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 832
    :cond_3d
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    monitor-enter p0

    .line 951
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Capabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Receive thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v3, :cond_87

    const-string/jumbo v3, "RUNNING"

    :goto_2d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Multicast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v3, :cond_8b

    const-string/jumbo v3, "DROP"

    :goto_4b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_132

    .line 955
    :try_start_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IPv4 address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/net/UnknownHostException; {:try_start_56 .. :try_end_77} :catch_150
    .catch Ljava/lang/NullPointerException; {:try_start_56 .. :try_end_77} :catch_150
    .catchall {:try_start_56 .. :try_end_77} :catchall_132

    .line 958
    :goto_77
    :try_start_77
    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_8f

    .line 959
    const-string/jumbo v3, "No program installed."

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_77 .. :try_end_85} :catchall_132

    monitor-exit p0

    .line 960
    return-void

    .line 952
    :cond_87
    :try_start_87
    const-string/jumbo v3, "STOPPED"

    goto :goto_2d

    .line 953
    :cond_8b
    const-string/jumbo v3, "ALLOW"

    goto :goto_4b

    .line 962
    :cond_8f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Program updates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 964
    const-string/jumbo v3, "Last program length %d, installed %ds ago, lifetime %ds"

    .line 963
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 965
    iget-object v5, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 966
    iget-wide v6, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 963
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 968
    const-string/jumbo v3, "RA filters:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 970
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ra$iterator":Ljava/util/Iterator;
    :goto_e5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_135

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    .line 971
    .local v1, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 972
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 974
    const-string/jumbo v3, "Seen: %d, last %ds ago"

    .line 973
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 974
    iget v5, v1, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v6

    iget-wide v8, v1, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 973
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 976
    const-string/jumbo v3, "Last match:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 978
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->getLastMatchingPacket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 981
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_131
    .catchall {:try_start_87 .. :try_end_131} :catchall_132

    goto :goto_e5

    .end local v1    # "ra":Landroid/net/apf/ApfFilter$Ra;
    .end local v2    # "ra$iterator":Ljava/util/Iterator;
    :catchall_132
    move-exception v3

    monitor-exit p0

    throw v3

    .line 983
    .restart local v2    # "ra$iterator":Ljava/util/Iterator;
    :cond_135
    :try_start_135
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 986
    const-string/jumbo v3, "Last program:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 988
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_14e
    .catchall {:try_start_135 .. :try_end_14e} :catchall_132

    monitor-exit p0

    .line 950
    return-void

    .line 956
    .end local v2    # "ra$iterator":Ljava/util/Iterator;
    :catch_150
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_77
.end method

.method installNewProgramLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 780
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    .line 782
    const-wide v4, 0x7fffffffffffffffL

    .line 785
    .local v4, "programMinLifetime":J
    :try_start_8
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v1

    .line 786
    .local v1, "gen":Landroid/net/apf/ApfGenerator;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v7, "rasToFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/apf/ApfFilter$Ra;>;"
    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "ra$iterator":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    .line 788
    .local v3, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v3, v1}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    .line 790
    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator;->programLengthOverEstimate()I

    move-result v8

    iget-object v9, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v9, v9, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    if-le v8, v9, :cond_4d

    .line 794
    .end local v3    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_30
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v1

    .line 795
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    .line 796
    .restart local v3    # "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v3, v1}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_38

    .line 791
    :cond_4d
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_8 .. :try_end_50} :catch_51

    goto :goto_17

    .line 801
    .end local v1    # "gen":Landroid/net/apf/ApfGenerator;
    .end local v3    # "ra":Landroid/net/apf/ApfFilter$Ra;
    .end local v6    # "ra$iterator":Ljava/util/Iterator;
    .end local v7    # "rasToFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/apf/ApfFilter$Ra;>;"
    :catch_51
    move-exception v0

    .line 802
    .local v0, "e":Landroid/net/apf/ApfGenerator$IllegalInstructionException;
    const-string/jumbo v8, "ApfFilter"

    const-string/jumbo v9, "Program failed to generate: "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    return-void

    .line 800
    .end local v0    # "e":Landroid/net/apf/ApfGenerator$IllegalInstructionException;
    .restart local v1    # "gen":Landroid/net/apf/ApfGenerator;
    .restart local v6    # "ra$iterator":Ljava/util/Iterator;
    .restart local v7    # "rasToFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/apf/ApfFilter$Ra;>;"
    :cond_5c
    :try_start_5c
    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator;->generate()[B
    :try_end_5f
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_5c .. :try_end_5f} :catch_51

    move-result-object v2

    .line 805
    .local v2, "program":[B
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    .line 806
    iput-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    .line 807
    iput-object v2, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    .line 808
    iget v8, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    .line 813
    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v8, v2}, Landroid/net/ip/IpManager$Callback;->installPacketFilter([B)V

    .line 779
    return-void
.end method

.method maybeStartFilter()V
    .registers 7

    .prologue
    .line 197
    :try_start_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    .line 198
    monitor-enter p0
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_9} :catch_3f
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_9} :catch_3f

    .line 200
    :try_start_9
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3c

    :try_start_c
    monitor-exit p0

    .line 202
    sget v3, Landroid/system/OsConstants;->AF_PACKET:I

    sget v4, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v5, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-static {v3, v4, v5}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 203
    .local v2, "socket":Ljava/io/FileDescriptor;
    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    int-to-short v3, v3

    .line 204
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    .line 203
    invoke-direct {v0, v3, v4}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 205
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 206
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v3, v3, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->attachRaFilter(Ljava/io/FileDescriptor;I)V
    :try_end_2f
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_2f} :catch_3f
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_2f} :catch_3f

    .line 211
    new-instance v3, Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-direct {v3, p0, v2}, Landroid/net/apf/ApfFilter$ReceiveThread;-><init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    .line 212
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v3}, Landroid/net/apf/ApfFilter$ReceiveThread;->start()V

    .line 194
    return-void

    .line 198
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    .end local v2    # "socket":Ljava/io/FileDescriptor;
    :catchall_3c
    move-exception v3

    :try_start_3d
    monitor-exit p0

    throw v3
    :try_end_3f
    .catch Ljava/net/SocketException; {:try_start_3d .. :try_end_3f} :catch_3f
    .catch Landroid/system/ErrnoException; {:try_start_3d .. :try_end_3f} :catch_3f

    .line 207
    :catch_3f
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ApfFilter"

    const-string/jumbo v4, "Error starting filter"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    return-void
.end method

.method public declared-synchronized setLinkProperties(Landroid/net/LinkProperties;)V
    .registers 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    monitor-enter p0

    .line 942
    :try_start_1
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->findIPv4Address(Landroid/net/LinkProperties;)[B

    move-result-object v0

    .line 944
    .local v0, "ipv4Address":[B
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    move-result v1

    if-eqz v1, :cond_f

    monitor-exit p0

    return-void

    .line 946
    :cond_f
    :try_start_f
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    .line 947
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    monitor-exit p0

    .line 940
    return-void

    .end local v0    # "ipv4Address":[B
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMulticastFilter(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    monitor-enter p0

    .line 921
    :try_start_1
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eq v0, p1, :cond_a

    .line 922
    iput-boolean p1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    .line 923
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 920
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 912
    :try_start_1
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v0, :cond_13

    .line 913
    const-string/jumbo v0, "shutting down"

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$ReceiveThread;->halt()V

    .line 915
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    .line 917
    :cond_13
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    .line 911
    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
